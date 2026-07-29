import HautevilleHouse.HControlCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace HControlCanonicalLaneLean

structure AdmissibleClass where
  object : HControlAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HControlWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end HControlCanonicalLaneLean
end HautevilleHouse