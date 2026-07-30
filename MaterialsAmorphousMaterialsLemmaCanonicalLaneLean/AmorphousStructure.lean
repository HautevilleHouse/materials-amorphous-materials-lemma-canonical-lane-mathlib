import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsLemmaCanonicalLaneLean

structure AmorphousStructure where
  atomicPositions : Type u
  radialDistributionFunction : Type v
  pairCorrelation : Type w
  bondAngleDistribution : Type x
  shortRangeOrder : Prop
  mediumRangeOrder : Prop
  homogeneousAmorphous : Prop
  isotropicAmorphous : Prop

structure AmorphousStructureEvidence (S : AmorphousStructure) where
  shortRangeOrderClosed : S.shortRangeOrder
  mediumRangeOrderClosed : S.mediumRangeOrder
  homogeneousAmorphousClosed : S.homogeneousAmorphous
  isotropicAmorphousClosed : S.isotropicAmorphous

def AmorphousStructureClosed (S : AmorphousStructure) : Prop :=
  S.shortRangeOrder ∧ S.mediumRangeOrder ∧ S.homogeneousAmorphous ∧ S.isotropicAmorphous

theorem amorphous_structure_closed_from_evidence (S : AmorphousStructure) (E : AmorphousStructureEvidence S) :
    AmorphousStructureClosed S := by
  exact And.intro E.shortRangeOrderClosed
    (And.intro E.mediumRangeOrderClosed
      (And.intro E.homogeneousAmorphousClosed E.isotropicAmorphousClosed))

end MaterialsAmorphousMaterialsLemmaCanonicalLaneLean
end HautevilleHouse