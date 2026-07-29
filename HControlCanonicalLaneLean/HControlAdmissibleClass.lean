import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HControlCanonicalLaneLean

structure HControlAdmittedObject where
  plant : Type u
  inputSpace : Type v
  outputSpace : Type w
  controller : Type x
  plantDynamics : Prop
  controllerLaw : Prop
  closedLoopWellPosed : Prop
  stabilityGuarantee : Prop
  conclusion : stabilityGuarantee

structure AdmissibleClass where
  object : HControlAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.stabilityGuarantee ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end HControlCanonicalLaneLean
end HautevilleHouse