import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsLemmaCanonicalLaneLean

structure ElasticityPackage where
  stressStrainRelation : Prop
  elasticConstants : Prop
  youngModulus : Prop
  poissonRatio : Prop
  isotropicElasticity : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  stressStrainRelationClosed : E.stressStrainRelation
  elasticConstantsClosed : E.elasticConstants
  youngModulusClosed : E.youngModulus
  poissonRatioClosed : E.poissonRatio
  isotropicElasticityClosed : E.isotropicElasticity

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.stressStrainRelation ∧ E.elasticConstants ∧
  E.youngModulus ∧ E.poissonRatio ∧ E.isotropicElasticity

theorem elasticity_closed_from_evidence
    (E : ElasticityPackage) (Ev : ElasticityEvidence E) :
    ElasticityClosed E := by
  exact And.intro Ev.stressStrainRelationClosed
    (And.intro Ev.elasticConstantsClosed
      (And.intro Ev.youngModulusClosed
        (And.intro Ev.poissonRatioClosed Ev.isotropicElasticityClosed)))

end MaterialsAmorphousMaterialsLemmaCanonicalLaneLean
end HautevilleHouse