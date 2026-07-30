import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsLemmaCanonicalLaneLean

structure CrystallographyPackage where
  latticeStructure : Prop
  bravaisLatticeClassified : Prop
  unitCellDefined : Prop
  atomicPositions : Prop
  symmetryGroup : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  latticeStructureClosed : C.latticeStructure
  bravaisLatticeClassifiedClosed : C.bravaisLatticeClassified
  unitCellDefinedClosed : C.unitCellDefined
  atomicPositionsClosed : C.atomicPositions
  symmetryGroupClosed : C.symmetryGroup

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.latticeStructure ∧ C.bravaisLatticeClassified ∧
  C.unitCellDefined ∧ C.atomicPositions ∧ C.symmetryGroup

theorem crystallography_closed_from_evidence
    (C : CrystallographyPackage) (E : CrystallographyEvidence C) :
    CrystallographyClosed C := by
  exact And.intro E.latticeStructureClosed
    (And.intro E.bravaisLatticeClassifiedClosed
      (And.intro E.unitCellDefinedClosed
        (And.intro E.atomicPositionsClosed E.symmetryGroupClosed)))

end MaterialsAmorphousMaterialsLemmaCanonicalLaneLean
end HautevilleHouse