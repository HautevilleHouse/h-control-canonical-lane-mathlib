import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HControlCanonicalLaneLean

structure BoundedRealLemmaPackage where
  lmiCharacterization : Prop
  hInfinityNormBound : Prop
  solvableIfAndOnlyIf : Prop
  equivalentCondition : Prop

structure BoundedRealLemmaEvidence (B : BoundedRealLemmaPackage) where
  lmiCharacterizationClosed : B.lmiCharacterization
  hInfinityNormBoundClosed : B.hInfinityNormBound
  solvableIfAndOnlyIfClosed : B.solvableIfAndOnlyIf
  equivalentConditionClosed : B.equivalentCondition

def BoundedRealLemmaClosed (B : BoundedRealLemmaPackage) : Prop :=
  B.lmiCharacterization ∧ B.hInfinityNormBound ∧ B.solvableIfAndOnlyIf ∧ B.equivalentCondition

theorem bounded_real_lemma_closed_from_evidence (B : BoundedRealLemmaPackage) (E : BoundedRealLemmaEvidence B) :
    BoundedRealLemmaClosed B := by
  exact And.intro E.lmiCharacterizationClosed
    (And.intro E.hInfinityNormBoundClosed
      (And.intro E.solvableIfAndOnlyIfClosed E.equivalentConditionClosed))

end HControlCanonicalLaneLean
end HautevilleHouse