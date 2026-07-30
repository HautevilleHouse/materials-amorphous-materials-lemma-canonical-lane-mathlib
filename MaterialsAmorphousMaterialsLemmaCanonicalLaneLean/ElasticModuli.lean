import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsLemmaCanonicalLaneLean

structure ElasticModuli where
  bulkModulus : Prop
  shearModulus : Prop
  youngsModulus : Prop
  poissonRatio : Prop
  elasticAnisotropy : Prop
  universalElasticAnisotropyIndex : Prop

structure ElasticModuliEvidence (M : ElasticModuli) where
  bulkModulusClosed : M.bulkModulus
  shearModulusClosed : M.shearModulus
  youngsModulusClosed : M.youngsModulus
  poissonRatioClosed : M.poissonRatio
  elasticAnisotropyClosed : M.elasticAnisotropy
  universalElasticAnisotropyIndexClosed : M.universalElasticAnisotropyIndex

def ElasticModuliClosed (M : ElasticModuli) : Prop :=
  M.bulkModulus ∧ M.shearModulus ∧ M.youngsModulus ∧ M.poissonRatio ∧
  M.elasticAnisotropy ∧ M.universalElasticAnisotropyIndex

theorem elastic_moduli_closed_from_evidence (M : ElasticModuli) (E : ElasticModuliEvidence M) :
    ElasticModuliClosed M := by
  exact And.intro E.bulkModulusClosed
    (And.intro E.shearModulusClosed
      (And.intro E.youngsModulusClosed
        (And.intro E.poissonRatioClosed
          (And.intro E.elasticAnisotropyClosed E.universalElasticAnisotropyIndexClosed))))

end MaterialsAmorphousMaterialsLemmaCanonicalLaneLean
end HautevilleHouse