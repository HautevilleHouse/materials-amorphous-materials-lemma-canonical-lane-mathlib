import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsLemmaCanonicalLaneLean

structure DiffusionMechanisms where
  collectiveJump : Prop
  stringlikeMotion : Prop
  activationEnergy : Prop
  diffusionCoefficient : Prop
  collectiveJumpEvidence : collectiveJump
  stringlikeMotionEvidence : stringlikeMotion
  activationEnergyEvidence : activationEnergy
  diffusionCoefficientEvidence : diffusionCoefficient

structure DiffusionMechanismsEvidence (D : DiffusionMechanisms) where
  collectiveJumpClosed : D.collectiveJump
  stringlikeMotionClosed : D.stringlikeMotion
  activationEnergyClosed : D.activationEnergy
  diffusionCoefficientClosed : D.diffusionCoefficient

def DiffusionMechanismsClosed (D : DiffusionMechanisms) : Prop :=
  D.collectiveJump ∧ D.stringlikeMotion ∧ D.activationEnergy ∧ D.diffusionCoefficient

theorem diffusion_mechanisms_closed_from_evidence
    (D : DiffusionMechanisms) (E : DiffusionMechanismsEvidence D) :
    DiffusionMechanismsClosed D := by
  exact And.intro E.collectiveJumpClosed
    (And.intro E.stringlikeMotionClosed
      (And.intro E.activationEnergyClosed E.diffusionCoefficientClosed))

end MaterialsAmorphousMaterialsLemmaCanonicalLaneLean
end HautevilleHouse