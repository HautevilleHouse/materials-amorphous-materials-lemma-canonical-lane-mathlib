import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsAmorphousMaterialsLemmaCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.MaterialsAmorphousMaterialsLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsLemmaCanonicalLaneLean

def ConstrainedAmorphousMaterialsLemmaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem amorphous_materials_lemma_endgame (A : AdmissibleClass) :
    ConstrainedAmorphousMaterialsLemmaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsAmorphousMaterialsLemmaCanonicalLaneLean
end HautevilleHouse