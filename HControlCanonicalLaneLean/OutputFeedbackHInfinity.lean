import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HControlCanonicalLaneLean

structure OutputFeedbackHInfinityPackage where
  plantModel : Prop
  measurementEquation : Prop
  dynamicController : Prop
  closedLoopWellPosedness : Prop
  inducedNormBound : Prop

structure OutputFeedbackHInfinityEvidence (O : OutputFeedbackHInfinityPackage) where
  plantModelClosed : O.plantModel
  measurementEquationClosed : O.measurementEquation
  dynamicControllerClosed : O.dynamicController
  closedLoopWellPosednessClosed : O.closedLoopWellPosedness
  inducedNormBoundClosed : O.inducedNormBound

def OutputFeedbackHInfinityClosed (O : OutputFeedbackHInfinityPackage) : Prop :=
  O.plantModel ∧ O.measurementEquation ∧ O.dynamicController ∧
  O.closedLoopWellPosedness ∧ O.inducedNormBound

theorem output_feedback_h_infinity_closed_from_evidence
    (O : OutputFeedbackHInfinityPackage)
    (E : OutputFeedbackHInfinityEvidence O) : OutputFeedbackHInfinityClosed O := by
  exact And.intro E.plantModelClosed
    (And.intro E.measurementEquationClosed
      (And.intro E.dynamicControllerClosed
        (And.intro E.closedLoopWellPosednessClosed E.inducedNormBoundClosed)))

end HControlCanonicalLaneLean
end HautevilleHouse