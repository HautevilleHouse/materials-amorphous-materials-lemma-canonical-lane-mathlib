import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsLemmaCanonicalLaneLean

structure CrystallizationKinetics where
  nucleationRate : Prop
  growthRate : Prop
  avramiExponent : Prop
  activationEnergy : Prop
  timeTemperatureTransformation : Prop
  criticalCoolingRate : Prop

structure CrystallizationKineticsEvidence (K : CrystallizationKinetics) where
  nucleationRateClosed : K.nucleationRate
  growthRateClosed : K.growthRate
  avramiExponentClosed : K.avramiExponent
  activationEnergyClosed : K.activationEnergy
  timeTemperatureTransformationClosed : K.timeTemperatureTransformation
  criticalCoolingRateClosed : K.criticalCoolingRate

def CrystallizationKineticsClosed (K : CrystallizationKinetics) : Prop :=
  K.nucleationRate ∧ K.growthRate ∧ K.avramiExponent ∧ K.activationEnergy ∧
  K.timeTemperatureTransformation ∧ K.criticalCoolingRate

theorem crystallization_kinetics_closed_from_evidence (K : CrystallizationKinetics) (E : CrystallizationKineticsEvidence K) :
    CrystallizationKineticsClosed K := by
  exact And.intro E.nucleationRateClosed
    (And.intro E.growthRateClosed
      (And.intro E.avramiExponentClosed
        (And.intro E.activationEnergyClosed
          (And.intro E.timeTemperatureTransformationClosed E.criticalCoolingRateClosed))))

end MaterialsAmorphousMaterialsLemmaCanonicalLaneLean
end HautevilleHouse