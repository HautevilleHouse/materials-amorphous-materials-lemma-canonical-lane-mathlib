import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsLemmaCanonicalLaneLean

structure ThermalTransport where
  thermalConductivity : Prop
  thermalDiffusivity : Prop
  specificHeat : Prop
  phononMeanFreePath : Prop
  debyeTemperature : Prop
  heatCapacity : Prop

structure ThermalTransportEvidence (T : ThermalTransport) where
  thermalConductivityClosed : T.thermalConductivity
  thermalDiffusivityClosed : T.thermalDiffusivity
  specificHeatClosed : T.specificHeat
  phononMeanFreePathClosed : T.phononMeanFreePath
  debyeTemperatureClosed : T.debyeTemperature
  heatCapacityClosed : T.heatCapacity

def ThermalTransportClosed (T : ThermalTransport) : Prop :=
  T.thermalConductivity ∧ T.thermalDiffusivity ∧ T.specificHeat ∧
  T.phononMeanFreePath ∧ T.debyeTemperature ∧ T.heatCapacity

theorem thermal_transport_closed_from_evidence (T : ThermalTransport) (E : ThermalTransportEvidence T) :
    ThermalTransportClosed T := by
  exact And.intro E.thermalConductivityClosed
    (And.intro E.thermalDiffusivityClosed
      (And.intro E.specificHeatClosed
        (And.intro E.phononMeanFreePathClosed
          (And.intro E.debyeTemperatureClosed E.heatCapacityClosed))))

end MaterialsAmorphousMaterialsLemmaCanonicalLaneLean
end HautevilleHouse