import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsLemmaCanonicalLaneLean

structure AmorphousAdmittedObject where
  sample : Type
  shortRangeOrder : Prop
  noPeriodicity : Prop
  conclusion : Prop

def AmorphousWitnessClosed (O : AmorphousAdmittedObject) : Prop :=
  O.conclusion

end MaterialsAmorphousMaterialsLemmaCanonicalLaneLean
end HautevilleHouse