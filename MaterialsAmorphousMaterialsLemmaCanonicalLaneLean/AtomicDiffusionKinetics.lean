import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsLemmaCanonicalLaneLean

structure AtomicDiffusionKineticsPackage where
  diffusionCoefficient : Prop
  activationEnergy : Prop
  hoppingMechanism : Prop
  temperatureDependence : Prop

structure AtomicDiffusionKineticsEvidence (D : AtomicDiffusionKineticsPackage) where
  diffusionCoefficientClosed : D.diffusionCoefficient
  activationEnergyClosed : D.activationEnergy
  hoppingMechanismClosed : D.hoppingMechanism
  temperatureDependenceClosed : D.temperatureDependence

def AtomicDiffusionKineticsClosed (D : AtomicDiffusionKineticsPackage) : Prop :=
  D.diffusionCoefficient ∧ D.activationEnergy ∧ D.hoppingMechanism ∧ D.temperatureDependence

theorem atomic_diffusion_kinetics_closed_from_evidence (D : AtomicDiffusionKineticsPackage) (E : AtomicDiffusionKineticsEvidence D) : AtomicDiffusionKineticsClosed D := by
  exact And.intro E.diffusionCoefficientClosed (And.intro E.activationEnergyClosed (And.intro E.hoppingMechanismClosed E.temperatureDependenceClosed))

end MaterialsAmorphousMaterialsLemmaCanonicalLaneLean
end HautevilleHouse