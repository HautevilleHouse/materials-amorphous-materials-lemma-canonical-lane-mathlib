import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsLemmaCanonicalLaneLean

structure AmorphousMicrostructure where
  density : Prop
  atomicCoordination : Prop
  shortRangeOrder : Prop
  mediumRangeOrder : Prop
  densityEvidence : density
  atomicCoordinationEvidence : atomicCoordination
  shortRangeOrderEvidence : shortRangeOrder
  mediumRangeOrderEvidence : mediumRangeOrder

structure AmorphousMicrostructureEvidence (M : AmorphousMicrostructure) where
  densityClosed : M.density
  atomicCoordinationClosed : M.atomicCoordination
  shortRangeOrderClosed : M.shortRangeOrder
  mediumRangeOrderClosed : M.mediumRangeOrder

def AmorphousMicrostructureClosed (M : AmorphousMicrostructure) : Prop :=
  M.density ∧ M.atomicCoordination ∧ M.shortRangeOrder ∧ M.mediumRangeOrder

theorem amorphous_microstructure_closed_from_evidence
    (M : AmorphousMicrostructure) (E : AmorphousMicrostructureEvidence M) :
    AmorphousMicrostructureClosed M := by
  exact And.intro E.densityClosed
    (And.intro E.atomicCoordinationClosed
      (And.intro E.shortRangeOrderClosed E.mediumRangeOrderClosed))

end MaterialsAmorphousMaterialsLemmaCanonicalLaneLean
end HautevilleHouse