import HautevilleHouse.HControlCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace HControlCanonicalLaneLean

structure HControlSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure HControlAdmittedObject where
  space : HControlSpace
  outputRegulation : Prop
  stabilityBound : Prop
  robustPerformance : Prop
  controllerModel : Type
  controllerTopology : TopologicalSpace controllerModel
  closedLoopStable : Prop
  conclusion : closedLoopStable

structure HControlEndgameState where
  object : HControlAdmittedObject

def HControlWitnessClosed (O : HControlAdmittedObject) : Prop :=
  O.closedLoopStable

end HControlCanonicalLaneLean
end HautevilleHouse