import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsLemmaCanonicalLaneLean

structure FractureMechanicsPackage where
  crackInitiation : Prop
  crackPropagation : Prop
  stressIntensityFactor : Prop
  fractureToughness : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  crackInitiationClosed : F.crackInitiation
  crackPropagationClosed : F.crackPropagation
  stressIntensityFactorClosed : F.stressIntensityFactor
  fractureToughnessClosed : F.fractureToughness

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.crackInitiation ∧ F.crackPropagation ∧ F.stressIntensityFactor ∧ F.fractureToughness

theorem fracture_mechanics_closed_from_evidence
    (F : FractureMechanicsPackage) (E : FractureMechanicsEvidence F) :
    FractureMechanicsClosed F := by
  exact And.intro E.crackInitiationClosed
    (And.intro E.crackPropagationClosed
      (And.intro E.stressIntensityFactorClosed E.fractureToughnessClosed))

end MaterialsAmorphousMaterialsLemmaCanonicalLaneLean
end HautevilleHouse