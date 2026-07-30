import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsLemmaCanonicalLaneLean

structure ElasticPropertiesPackage where
  bulkModulus : Prop
  shearModulus : Prop
  youngModulus : Prop
  poissonRatio : Prop

structure ElasticPropertiesEvidence (E : ElasticPropertiesPackage) where
  bulkModulusClosed : E.bulkModulus
  shearModulusClosed : E.shearModulus
  youngModulusClosed : E.youngModulus
  poissonRatioClosed : E.poissonRatio

def ElasticPropertiesClosed (E : ElasticPropertiesPackage) : Prop :=
  E.bulkModulus ∧ E.shearModulus ∧ E.youngModulus ∧ E.poissonRatio

theorem elastic_properties_closed_from_evidence
    (E : ElasticPropertiesPackage) (Ev : ElasticPropertiesEvidence E) :
    ElasticPropertiesClosed E := by
  exact And.intro Ev.bulkModulusClosed
    (And.intro Ev.shearModulusClosed
      (And.intro Ev.youngModulusClosed Ev.poissonRatioClosed))

end MaterialsAmorphousMaterialsLemmaCanonicalLaneLean
end HautevilleHouse