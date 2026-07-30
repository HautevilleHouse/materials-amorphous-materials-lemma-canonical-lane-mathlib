import canonicalLaneMathlib.AdmissibleClass
import MaterialsAmorphousMaterialsLemmaCanonicalLaneLean.AmorphousCore

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsLemmaCanonicalLaneLean

structure PhaseDiagramPackage (O : AmorphousAdmittedObject) where
  glassTransition : Prop
  crystallizationKinetics : Prop
  metastability : Prop
  phaseBoundaries : Prop

structure PhaseDiagramEvidence {O : AmorphousAdmittedObject} (P : PhaseDiagramPackage O) where
  glassTransitionClosed : P.glassTransition
  crystallizationKineticsClosed : P.crystallizationKinetics
  metastabilityClosed : P.metastability
  phaseBoundariesClosed : P.phaseBoundaries

def PhaseDiagramClosed {O : AmorphousAdmittedObject} (P : PhaseDiagramPackage O) : Prop :=
  P.glassTransition ∧ P.crystallizationKinetics ∧ P.metastability ∧ P.phaseBoundaries

theorem phase_diagram_closed_from_evidence {O : AmorphousAdmittedObject} (P : PhaseDiagramPackage O)
    (Pv : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro Pv.glassTransitionClosed (And.intro Pv.crystallizationKineticsClosed
    (And.intro Pv.metastabilityClosed Pv.phaseBoundariesClosed))

end MaterialsAmorphousMaterialsLemmaCanonicalLaneLean
end HautevilleHouse