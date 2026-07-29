import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HControlCanonicalLaneLean

structure HInfinityNormPackage where
  systemType : Type u
  transferFunction : Type v
  hInfinityNorm : Prop
  boundedRealLemma : Prop
  stabilityMargin : Prop

structure HInfinityNormEvidence (P : HInfinityNormPackage) where
  hInfinityNormClosed : P.hInfinityNorm
  boundedRealLemmaClosed : P.boundedRealLemma
  stabilityMarginClosed : P.stabilityMargin

def HInfinityNormClosed (P : HInfinityNormPackage) : Prop :=
  P.hInfinityNorm ∧ P.boundedRealLemma ∧ P.stabilityMargin

theorem h_infinity_norm_closed_from_evidence
    (P : HInfinityNormPackage) (E : HInfinityNormEvidence P) :
    HInfinityNormClosed P := by
  exact And.intro E.hInfinityNormClosed
    (And.intro E.boundedRealLemmaClosed E.stabilityMarginClosed)

end HControlCanonicalLaneLean
end HautevilleHouse