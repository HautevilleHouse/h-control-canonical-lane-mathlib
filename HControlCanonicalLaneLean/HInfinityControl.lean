import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HControlCanonicalLaneLean

structure HInfinityControlPackage where
  plant : Type u
  plantDynamics : Type v
  disturbanceInput : Type w
  controlledOutput : Type x
  measuredOutput : Type y
  controlInput : Type z
  hInfinityNorm : Prop
  internalStability : Prop
  disturbanceAttenuation : Prop
  controllerExistence : Prop

structure HInfinityControlEvidence (P : HInfinityControlPackage) where
  hInfinityNormClosed : P.hInfinityNorm
  internalStabilityClosed : P.internalStability
  disturbanceAttenuationClosed : P.disturbanceAttenuation
  controllerExistenceClosed : P.controllerExistence

def HInfinityControlClosed (P : HInfinityControlPackage) : Prop :=
  P.hInfinityNorm ∧ P.internalStability ∧ P.disturbanceAttenuation ∧ P.controllerExistence

theorem h_infinity_control_closed_from_evidence (P : HInfinityControlPackage) (E : HInfinityControlEvidence P) :
    HInfinityControlClosed P := by
  exact And.intro E.hInfinityNormClosed
    (And.intro E.internalStabilityClosed
      (And.intro E.disturbanceAttenuationClosed E.controllerExistenceClosed))

end HControlCanonicalLaneLean
end HautevilleHouse