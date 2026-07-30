import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsLemmaCanonicalLaneLean

structure AmorphousStructurePackage where
  shortRangeOrder : Prop
  bondAngleDistribution : Prop
  coordinationNumberDistribution : Prop
  radialDistributionFunction : Prop

structure AmorphousStructureEvidence (A : AmorphousStructurePackage) where
  shortRangeOrderClosed : A.shortRangeOrder
  bondAngleDistributionClosed : A.bondAngleDistribution
  coordinationNumberDistributionClosed : A.coordinationNumberDistribution
  radialDistributionFunctionClosed : A.radialDistributionFunction

def AmorphousStructureClosed (A : AmorphousStructurePackage) : Prop :=
  A.shortRangeOrder ∧ A.bondAngleDistribution ∧ A.coordinationNumberDistribution ∧ A.radialDistributionFunction

theorem amorphous_structure_closed_from_evidence (A : AmorphousStructurePackage) (E : AmorphousStructureEvidence A) : AmorphousStructureClosed A := by
  exact And.intro E.shortRangeOrderClosed (And.intro E.bondAngleDistributionClosed (And.intro E.coordinationNumberDistributionClosed E.radialDistributionFunctionClosed))

end MaterialsAmorphousMaterialsLemmaCanonicalLaneLean
end HautevilleHouse