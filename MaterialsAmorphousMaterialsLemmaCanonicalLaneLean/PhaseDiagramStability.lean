import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsLemmaCanonicalLaneLean

structure PhaseDiagramStabilityPackage where
  glassTransitionTemperature : Prop
  crystallizationKinetics : Prop
  metastablePhaseBoundary : Prop
  freeEnergyLandscape : Prop

structure PhaseDiagramStabilityEvidence (P : PhaseDiagramStabilityPackage) where
  glassTransitionTemperatureClosed : P.glassTransitionTemperature
  crystallizationKineticsClosed : P.crystallizationKinetics
  metastablePhaseBoundaryClosed : P.metastablePhaseBoundary
  freeEnergyLandscapeClosed : P.freeEnergyLandscape

def PhaseDiagramStabilityClosed (P : PhaseDiagramStabilityPackage) : Prop :=
  P.glassTransitionTemperature ∧ P.crystallizationKinetics ∧ P.metastablePhaseBoundary ∧ P.freeEnergyLandscape

theorem phase_diagram_stability_closed_from_evidence (P : PhaseDiagramStabilityPackage) (E : PhaseDiagramStabilityEvidence P) : PhaseDiagramStabilityClosed P := by
  exact And.intro E.glassTransitionTemperatureClosed (And.intro E.crystallizationKineticsClosed (And.intro E.metastablePhaseBoundaryClosed E.freeEnergyLandscapeClosed))

end MaterialsAmorphousMaterialsLemmaCanonicalLaneLean
end HautevilleHouse