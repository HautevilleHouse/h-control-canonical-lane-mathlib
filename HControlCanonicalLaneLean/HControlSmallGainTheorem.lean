import HControlCanonicalLaneLean.HControlRiccatiEquation

namespace HautevilleHouse
namespace HControlCanonicalLaneLean

structure SmallGainCondition where
  loopGain : ℝ
  gainProductLessThanOne : loopGain < 1

structure SmallGainPackage where
  system : HControlSystem
  condition : SmallGainCondition
  closedLoopStableFromGain : Prop

structure SmallGainEvidence (S : SmallGainPackage) where
  gainConditionClosed : S.condition.gainProductLessThanOne
  closedLoopStableClosed : S.closedLoopStableFromGain

def SmallGainClosed (S : SmallGainPackage) : Prop :=
  S.condition.gainProductLessThanOne ∧ S.closedLoopStableFromGain

theorem small_gain_closed_from_evidence
    (S : SmallGainPackage) (E : SmallGainEvidence S) :
    SmallGainClosed S := by
  exact And.intro E.gainConditionClosed E.closedLoopStableClosed

end HControlCanonicalLaneLean
end HautevilleHouse