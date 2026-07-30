import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsLemmaCanonicalLaneLean

structure FractureToughness where
  stressConcentrationFactor : Prop
  criticalStressIntensityFactor : Prop
  fractureEnergy : Prop
  crackGrowthResistance : Prop
  fatigueThreshold : Prop
  ductileBrittleTransition : Prop

structure FractureToughnessEvidence (F : FractureToughness) where
  stressConcentrationFactorClosed : F.stressConcentrationFactor
  criticalStressIntensityFactorClosed : F.criticalStressIntensityFactor
  fractureEnergyClosed : F.fractureEnergy
  crackGrowthResistanceClosed : F.crackGrowthResistance
  fatigueThresholdClosed : F.fatigueThreshold
  ductileBrittleTransitionClosed : F.ductileBrittleTransition

def FractureToughnessClosed (F : FractureToughness) : Prop :=
  F.stressConcentrationFactor ∧ F.criticalStressIntensityFactor ∧ F.fractureEnergy ∧
  F.crackGrowthResistance ∧ F.fatigueThreshold ∧ F.ductileBrittleTransition

theorem fracture_toughness_closed_from_evidence (F : FractureToughness) (E : FractureToughnessEvidence F) :
    FractureToughnessClosed F := by
  exact And.intro E.stressConcentrationFactorClosed
    (And.intro E.criticalStressIntensityFactorClosed
      (And.intro E.fractureEnergyClosed
        (And.intro E.crackGrowthResistanceClosed
          (And.intro E.fatigueThresholdClosed E.ductileBrittleTransitionClosed))))

end MaterialsAmorphousMaterialsLemmaCanonicalLaneLean
end HautevilleHouse