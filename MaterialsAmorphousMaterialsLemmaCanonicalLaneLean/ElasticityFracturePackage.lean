import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsLemmaCanonicalLaneLean

structure ElasticityFracturePackage where
  elasticModuli : Prop
  fractureToughness : Prop
  stressStrainRelation : Prop
  crackPropagation : Prop

structure ElasticityFractureEvidence (E : ElasticityFracturePackage) where
  elasticModuliClosed : E.elasticModuli
  fractureToughnessClosed : E.fractureToughness
  stressStrainRelationClosed : E.stressStrainRelation
  crackPropagationClosed : E.crackPropagation

def ElasticityFractureClosed (E : ElasticityFracturePackage) : Prop :=
  E.elasticModuli ∧ E.fractureToughness ∧ E.stressStrainRelation ∧ E.crackPropagation

theorem elasticity_fracture_closed_from_evidence (E : ElasticityFracturePackage) (Ev : ElasticityFractureEvidence E) : ElasticityFractureClosed E := by
  exact And.intro Ev.elasticModuliClosed (And.intro Ev.fractureToughnessClosed (And.intro Ev.stressStrainRelationClosed Ev.crackPropagationClosed))

end MaterialsAmorphousMaterialsLemmaCanonicalLaneLean
end HautevilleHouse