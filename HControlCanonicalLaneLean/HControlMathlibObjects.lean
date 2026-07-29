import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HControlCanonicalLaneLean

structure HControlSystem where
  plant : Type
  controller : Type
  disturbances : Type
  measurements : Type
  controlSignal : Type
  plantDynamics : Prop
  controllerAction : Prop
  closedLoopStable : Prop

structure HControlAdmittedObject where
  system : HControlSystem
  disturbanceAttentuationBound : ℝ
  satisfiesHInfNormBound : Prop
  conclusion : satisfiesHInfNormBound

structure HControlEndgameState where
  object : HControlAdmittedObject

def HControlWitnessClosed (O : HControlAdmittedObject) : Prop :=
  O.satisfiesHInfNormBound

end HControlCanonicalLaneLean
end HautevilleHouse