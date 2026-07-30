import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsLemmaCanonicalLaneLean

structure PairDistributionFunctionPackage where
  radialDistribution : Prop
  coordinationNumbers : Prop
  bondAngleDistributions : Prop
  validationAgainstExperiment : Prop

structure PairDistributionFunctionEvidence (P : PairDistributionFunctionPackage) where
  radialDistributionClosed : P.radialDistribution
  coordinationNumbersClosed : P.coordinationNumbers
  bondAngleDistributionsClosed : P.bondAngleDistributions
  validationAgainstExperimentClosed : P.validationAgainstExperiment

def PairDistributionFunctionClosed (P : PairDistributionFunctionPackage) : Prop :=
  P.radialDistribution ∧ P.coordinationNumbers ∧ P.bondAngleDistributions ∧ P.validationAgainstExperiment

theorem pair_distribution_function_closed_from_evidence
    (P : PairDistributionFunctionPackage) (E : PairDistributionFunctionEvidence P) :
    PairDistributionFunctionClosed P := by
  exact And.intro E.radialDistributionClosed
    (And.intro E.coordinationNumbersClosed
      (And.intro E.bondAngleDistributionsClosed E.validationAgainstExperimentClosed))

end MaterialsAmorphousMaterialsLemmaCanonicalLaneLean
end HautevilleHouse