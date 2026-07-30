import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsLemmaCanonicalLaneLean

structure PhaseDiagramPackage where
  phaseBoundaries : Prop
  thermodynamicVariables : Prop
  equilibriumPhases : Prop
  phaseTransitions : Prop
  gibbsFreeEnergy : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseBoundariesClosed : P.phaseBoundaries
  thermodynamicVariablesClosed : P.thermodynamicVariables
  equilibriumPhasesClosed : P.equilibriumPhases
  phaseTransitionsClosed : P.phaseTransitions
  gibbsFreeEnergyClosed : P.gibbsFreeEnergy

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseBoundaries ∧ P.thermodynamicVariables ∧
  P.equilibriumPhases ∧ P.phaseTransitions ∧ P.gibbsFreeEnergy

theorem phase_diagram_closed_from_evidence
    (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.phaseBoundariesClosed
    (And.intro E.thermodynamicVariablesClosed
      (And.intro E.equilibriumPhasesClosed
        (And.intro E.phaseTransitionsClosed E.gibbsFreeEnergyClosed)))

end MaterialsAmorphousMaterialsLemmaCanonicalLaneLean
end HautevilleHouse