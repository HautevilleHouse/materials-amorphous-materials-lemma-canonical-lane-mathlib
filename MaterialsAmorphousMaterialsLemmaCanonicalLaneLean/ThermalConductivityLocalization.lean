import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsLemmaCanonicalLaneLean

structure ThermalConductivityLocalizationPackage where
  vibrationalDensityOfStates : Prop
  propagatorLocalization : Prop
  thermalConductivity : Prop
  temperatureScaling : Prop

structure ThermalConductivityLocalizationEvidence (T : ThermalConductivityLocalizationPackage) where
  vibrationalDensityOfStatesClosed : T.vibrationalDensityOfStates
  propagatorLocalizationClosed : T.propagatorLocalization
  thermalConductivityClosed : T.thermalConductivity
  temperatureScalingClosed : T.temperatureScaling

def ThermalConductivityLocalizationClosed (T : ThermalConductivityLocalizationPackage) : Prop :=
  T.vibrationalDensityOfStates ∧ T.propagatorLocalization ∧ T.thermalConductivity ∧ T.temperatureScaling

theorem thermal_conductivity_localization_closed_from_evidence (T : ThermalConductivityLocalizationPackage) (E : ThermalConductivityLocalizationEvidence T) : ThermalConductivityLocalizationClosed T := by
  exact And.intro E.vibrationalDensityOfStatesClosed (And.intro E.propagatorLocalizationClosed (And.intro E.thermalConductivityClosed E.temperatureScalingClosed))

end MaterialsAmorphousMaterialsLemmaCanonicalLaneLean
end HautevilleHouse