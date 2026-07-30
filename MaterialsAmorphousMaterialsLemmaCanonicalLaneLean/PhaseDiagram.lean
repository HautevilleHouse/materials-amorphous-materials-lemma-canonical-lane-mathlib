import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsLemmaCanonicalLaneLean

structure PhaseDiagram where
  glassTransitionTemperature : Prop
  crystallizationTemperature : Prop
  liquidusTemperature : Prop
  eutecticComposition : Prop
  phaseBoundaries : Prop
  metastablePhases : Prop

structure PhaseDiagramEvidence (P : PhaseDiagram) where
  glassTransitionTemperatureClosed : P.glassTransitionTemperature
  crystallizationTemperatureClosed : P.crystallizationTemperature
  liquidusTemperatureClosed : P.liquidusTemperature
  eutecticCompositionClosed : P.eutecticComposition
  phaseBoundariesClosed : P.phaseBoundaries
  metastablePhasesClosed : P.metastablePhases

def PhaseDiagramClosed (P : PhaseDiagram) : Prop :=
  P.glassTransitionTemperature ∧ P.crystallizationTemperature ∧ P.liquidusTemperature ∧
  P.eutecticComposition ∧ P.phaseBoundaries ∧ P.metastablePhases

theorem phase_diagram_closed_from_evidence (P : PhaseDiagram) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.glassTransitionTemperatureClosed
    (And.intro E.crystallizationTemperatureClosed
      (And.intro E.liquidusTemperatureClosed
        (And.intro E.eutecticCompositionClosed
          (And.intro E.phaseBoundariesClosed E.metastablePhasesClosed))))

end MaterialsAmorphousMaterialsLemmaCanonicalLaneLean
end HautevilleHouse