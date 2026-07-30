import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsLemmaCanonicalLaneLean

structure StructuralRelaxationPackage where
  energyMinimizationConverged : Prop
  atomicPositionUpdated : Prop
  volumeRelaxation : Prop
  stressRelaxation : Prop

structure StructuralRelaxationEvidence (S : StructuralRelaxationPackage) where
  energyMinimizationConvergedClosed : S.energyMinimizationConverged
  atomicPositionUpdatedClosed : S.atomicPositionUpdated
  volumeRelaxationClosed : S.volumeRelaxation
  stressRelaxationClosed : S.stressRelaxation

def StructuralRelaxationClosed (S : StructuralRelaxationPackage) : Prop :=
  S.energyMinimizationConverged ∧ S.atomicPositionUpdated ∧ S.volumeRelaxation ∧ S.stressRelaxation

theorem structural_relaxation_closed_from_evidence
    (S : StructuralRelaxationPackage) (E : StructuralRelaxationEvidence S) :
    StructuralRelaxationClosed S := by
  exact And.intro E.energyMinimizationConvergedClosed
    (And.intro E.atomicPositionUpdatedClosed
      (And.intro E.volumeRelaxationClosed E.stressRelaxationClosed))

end MaterialsAmorphousMaterialsLemmaCanonicalLaneLean
end HautevilleHouse