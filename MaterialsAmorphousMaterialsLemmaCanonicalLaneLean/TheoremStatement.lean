import HautevilleHouse.MaterialsAmorphousMaterialsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure AmorphousMaterialsAdmittedObject where
  structureModel : Type
  amorphousStructureSatisfied : Prop
  localOrderConstrained : Prop
  conclusion : amorphousStructureSatisfied ∧ localOrderConstrained

structure AmorphousMaterialsEndgameState where
  object : AmorphousMaterialsAdmittedObject

def AmorphousMaterialsWitnessClosed (O : AmorphousMaterialsAdmittedObject) : Prop :=
  O.amorphousStructureSatisfied ∧ O.localOrderConstrained

end MaterialsAmorphousMaterialsLemmaCanonicalLaneLean
end HautevilleHouse