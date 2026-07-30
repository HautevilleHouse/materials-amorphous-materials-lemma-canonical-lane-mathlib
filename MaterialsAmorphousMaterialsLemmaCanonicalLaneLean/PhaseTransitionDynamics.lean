import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsLemmaCanonicalLaneLean

structure PhaseTransitionDynamics where
  glassTransition : Prop
  crystallizationKinetics : Prop
  freeVolumeModel : Prop
  cooperativity : Prop
  glassTransitionEvidence : glassTransition
  crystallizationKineticsEvidence : crystallizationKinetics
  freeVolumeModelEvidence : freeVolumeModel
  cooperativityEvidence : cooperativity

structure PhaseTransitionDynamicsEvidence (P : PhaseTransitionDynamics) where
  glassTransitionClosed : P.glassTransition
  crystallizationKineticsClosed : P.crystallizationKinetics
  freeVolumeModelClosed : P.freeVolumeModel
  cooperativityClosed : P.cooperativity

def PhaseTransitionDynamicsClosed (P : PhaseTransitionDynamics) : Prop :=
  P.glassTransition ∧ P.crystallizationKinetics ∧ P.freeVolumeModel ∧ P.cooperativity

theorem phase_transition_dynamics_closed_from_evidence
    (P : PhaseTransitionDynamics) (E : PhaseTransitionDynamicsEvidence P) :
    PhaseTransitionDynamicsClosed P := by
  exact And.intro E.glassTransitionClosed
    (And.intro E.crystallizationKineticsClosed
      (And.intro E.freeVolumeModelClosed E.cooperativityClosed))

end MaterialsAmorphousMaterialsLemmaCanonicalLaneLean
end HautevilleHouse