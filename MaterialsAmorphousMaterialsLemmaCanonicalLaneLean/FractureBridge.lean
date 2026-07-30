import canonicalLaneMathlib.AdmissibleClass
import MaterialsAmorphousMaterialsLemmaCanonicalLaneLean.AmorphousCore

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsLemmaCanonicalLaneLean

structure FracturePackage (O : AmorphousAdmittedObject) where
  fractureToughness : Prop
  crackPropagation : Prop
  stressIntensityFactor : Prop
  failureCriterion : Prop

structure FractureEvidence {O : AmorphousAdmittedObject} (F : FracturePackage O) where
  fractureToughnessClosed : F.fractureToughness
  crackPropagationClosed : F.crackPropagation
  stressIntensityFactorClosed : F.stressIntensityFactor
  failureCriterionClosed : F.failureCriterion

def FractureClosed {O : AmorphousAdmittedObject} (F : FracturePackage O) : Prop :=
  F.fractureToughness ∧ F.crackPropagation ∧ F.stressIntensityFactor ∧ F.failureCriterion

theorem fracture_closed_from_evidence {O : AmorphousAdmittedObject} (F : FracturePackage O)
    (Fv : FractureEvidence F) : FractureClosed F := by
  exact And.intro Fv.fractureToughnessClosed (And.intro Fv.crackPropagationClosed
    (And.intro Fv.stressIntensityFactorClosed Fv.failureCriterionClosed))

end MaterialsAmorphousMaterialsLemmaCanonicalLaneLean
end HautevilleHouse