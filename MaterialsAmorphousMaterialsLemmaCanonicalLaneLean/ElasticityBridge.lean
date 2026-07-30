import canonicalLaneMathlib.AdmissibleClass
import MaterialsAmorphousMaterialsLemmaCanonicalLaneLean.AmorphousCore

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsLemmaCanonicalLaneLean

structure ElasticityPackage (O : AmorphousAdmittedObject) where
  bulkModulus : Prop
  shearModulus : Prop
  poissonRatio : Prop
  elasticRegime : Prop

structure ElasticityEvidence {O : AmorphousAdmittedObject} (E : ElasticityPackage O) where
  bulkModulusClosed : E.bulkModulus
  shearModulusClosed : E.shearModulus
  poissonRatioClosed : E.poissonRatio
  elasticRegimeClosed : E.elasticRegime

def ElasticityClosed {O : AmorphousAdmittedObject} (E : ElasticityPackage O) : Prop :=
  E.bulkModulus ∧ E.shearModulus ∧ E.poissonRatio ∧ E.elasticRegime

theorem elasticity_closed_from_evidence {O : AmorphousAdmittedObject} (E : ElasticityPackage O)
    (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.bulkModulusClosed (And.intro Ev.shearModulusClosed
    (And.intro Ev.poissonRatioClosed Ev.elasticRegimeClosed))

end MaterialsAmorphousMaterialsLemmaCanonicalLaneLean
end HautevilleHouse