import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HControlCanonicalLaneLean

structure DGKFStateSpacePackage where
  plantStateDimension : Nat
  disturbanceDimension : Nat
  controlDimension : Nat
  measurementDimension : Nat
  outputDimension : Nat
  dgkfAssumptions : Prop
  centralController : Prop
  separationStructure : Prop

structure DGKFStateSpaceEvidence (D : DGKFStateSpacePackage) where
  dgkfAssumptionsClosed : D.dgkfAssumptions
  centralControllerClosed : D.centralController
  separationStructureClosed : D.separationStructure

def DGKFStateSpaceClosed (D : DGKFStateSpacePackage) : Prop :=
  D.dgkfAssumptions ∧ D.centralController ∧ D.separationStructure

theorem dgkf_state_space_closed_from_evidence (D : DGKFStateSpacePackage) (E : DGKFStateSpaceEvidence D) :
    DGKFStateSpaceClosed D := by
  exact And.intro E.dgkfAssumptionsClosed
    (And.intro E.centralControllerClosed E.separationStructureClosed)

end HControlCanonicalLaneLean
end HautevilleHouse