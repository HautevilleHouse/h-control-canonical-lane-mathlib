import HControlCanonicalLaneLean.HControlRiccatiEquation

namespace HautevilleHouse
namespace HControlCanonicalLaneLean

structure SmallGainPackage {R : RiccatiSolutionPackage} where
  loopGain : Type u
  gainBound : Prop
  interconnectionStability : Prop
  gainBoundTerm : gainBound

def SmallGainClosed {R : RiccatiSolutionPackage} (S : SmallGainPackage R) : Prop :=
  S.gainBound ∧ S.interconnectionStability

theorem small_gain_closed {R : RiccatiSolutionPackage} (S : SmallGainPackage R) :
    SmallGainClosed S := by
  exact And.intro S.gainBoundTerm S.interconnectionStability

end HControlCanonicalLaneLean
end HautevilleHouse