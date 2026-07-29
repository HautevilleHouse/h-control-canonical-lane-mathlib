import HautevilleHouse.HControlCanonicalLaneLean.HControlSystem

namespace HautevilleHouse
namespace HControlCanonicalLaneLean

structure HInfinityNorm (S : HControlSystem) where
  gain : Type u
  normValue : Prop
  normBound : Prop
  normValueClosed : normValue
  normBoundClosed : normBound

structure HInfinityNormEvidence {S : HControlSystem} (N : HInfinityNorm S) where
  normValueClosed : N.normValue
  normBoundClosed : N.normBound

def HInfinityNormClosed {S : HControlSystem} (N : HInfinityNorm S) : Prop :=
  N.normValue ∧ N.normBound

theorem h_infinity_norm_closed_from_evidence {S : HControlSystem} (N : HInfinityNorm S) (E : HInfinityNormEvidence N) : HInfinityNormClosed N :=
  And.intro E.normValueClosed E.normBoundClosed

end HControlCanonicalLaneLean
end HautevilleHouse