import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HControlCanonicalLaneLean

structure SmallGainPackage where
  loopGain : Type u
  gainProduct : Prop
  stabilityCondition : Prop
  loopTransferFunction : Type v
  wellPosedness : Prop

structure SmallGainEvidence (S : SmallGainPackage) where
  gainProductClosed : S.gainProduct
  stabilityConditionClosed : S.stabilityCondition
  wellPosednessClosed : S.wellPosedness

def SmallGainClosed (S : SmallGainPackage) : Prop :=
  S.gainProduct ∧ S.stabilityCondition ∧ S.wellPosedness

theorem small_gain_closed_from_evidence
    (S : SmallGainPackage) (E : SmallGainEvidence S) :
    SmallGainClosed S := by
  exact And.intro E.gainProductClosed
    (And.intro E.stabilityConditionClosed E.wellPosednessClosed)

end HControlCanonicalLaneLean
end HautevilleHouse