import HControlCanonicalLaneLean.HControlSmallGainTheorem

namespace HautevilleHouse
namespace HControlCanonicalLaneLean

structure StateFeedbackLaw where
  gainMatrix : Matrix ℝ ℝ
  closedLoopDynamics : Prop
  quadraticallyStabilizing : Prop

structure StateFeedbackPackage where
  system : HControlSystem
  law : StateFeedbackLaw
  existenceGuaranteed : Prop
  robustStabilization : Prop

structure StateFeedbackEvidence (S : StateFeedbackPackage) where
  existenceClosed : S.existenceGuaranteed
  robustStabilizationClosed : S.robustStabilization

def StateFeedbackClosed (S : StateFeedbackPackage) : Prop :=
  S.existenceGuaranteed ∧ S.robustStabilization

theorem state_feedback_closed_from_evidence
    (S : StateFeedbackPackage) (E : StateFeedbackEvidence S) :
    StateFeedbackClosed S := by
  exact And.intro E.existenceClosed E.robustStabilizationClosed

end HControlCanonicalLaneLean
end HautevilleHouse