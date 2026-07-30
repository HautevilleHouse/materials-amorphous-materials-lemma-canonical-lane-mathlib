import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsLemmaCanonicalLaneLean

structure MechanicalProperties where
  elasticModulus : Prop
  yieldStrength : Prop
  fractureToughness : Prop
  strainRateSensitivity : Prop
  elasticModulusEvidence : elasticModulus
  yieldStrengthEvidence : yieldStrength
  fractureToughnessEvidence : fractureToughness
  strainRateSensitivityEvidence : strainRateSensitivity

structure MechanicalPropertiesEvidence (M : MechanicalProperties) where
  elasticModulusClosed : M.elasticModulus
  yieldStrengthClosed : M.yieldStrength
  fractureToughnessClosed : M.fractureToughness
  strainRateSensitivityClosed : M.strainRateSensitivity

def MechanicalPropertiesClosed (M : MechanicalProperties) : Prop :=
  M.elasticModulus ∧ M.yieldStrength ∧ M.fractureToughness ∧ M.strainRateSensitivity

theorem mechanical_properties_closed_from_evidence
    (M : MechanicalProperties) (E : MechanicalPropertiesEvidence M) :
    MechanicalPropertiesClosed M := by
  exact And.intro E.elasticModulusClosed
    (And.intro E.yieldStrengthClosed
      (And.intro E.fractureToughnessClosed E.strainRateSensitivityClosed))

end MaterialsAmorphousMaterialsLemmaCanonicalLaneLean
end HautevilleHouse