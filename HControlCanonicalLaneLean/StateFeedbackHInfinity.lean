import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HControlCanonicalLaneLean

structure StateFeedbackHInfinityPackage where
  plantModel : Prop
  performanceOutput : Prop
  stateFeedbackGain : Prop
  closedLoopNorm : Prop
  disturbanceRejection : Prop

structure StateFeedbackHInfinityEvidence (S : StateFeedbackHInfinityPackage) where
  plantModelClosed : S.plantModel
  performanceOutputClosed : S.performanceOutput
  stateFeedbackGainClosed : S.stateFeedbackGain
  closedLoopNormClosed : S.closedLoopNorm
  disturbanceRejectionClosed : S.disturbanceRejection

def StateFeedbackHInfinityClosed (S : StateFeedbackHInfinityPackage) : Prop :=
  S.plantModel ∧ S.performanceOutput ∧ S.stateFeedbackGain ∧
  S.closedLoopNorm ∧ S.disturbanceRejection

theorem state_feedback_h_infinity_closed_from_evidence
    (S : StateFeedbackHInfinityPackage)
    (E : StateFeedbackHInfinityEvidence S) : StateFeedbackHInfinityClosed S := by
  exact And.intro E.plantModelClosed
    (And.intro E.performanceOutputClosed
      (And.intro E.stateFeedbackGainClosed
        (And.intro E.closedLoopNormClosed E.disturbanceRejectionClosed)))

end HControlCanonicalLaneLean
end HautevilleHouse