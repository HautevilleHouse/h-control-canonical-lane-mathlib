import HautevilleHouse.HControlCanonicalLaneLean.SmallGainTheorem

namespace HautevilleHouse
namespace HControlCanonicalLaneLean

structure RobustStabilityPackage (S : HControlSystem) where
  uncertaintyModel : Prop
  robustPerformance : Prop
  robustStabilityMargin : Prop
  uncertaintyModelClosed : uncertaintyModel
  robustPerformanceClosed : robustPerformance
  robustStabilityMarginClosed : robustStabilityMargin

structure RobustStabilityEvidence {S : HControlSystem} (R : RobustStabilityPackage S) where
  uncertaintyModelClosed : R.uncertaintyModel
  robustPerformanceClosed : R.robustPerformance
  robustStabilityMarginClosed : R.robustStabilityMargin

def RobustStabilityClosed {S : HControlSystem} (R : RobustStabilityPackage S) : Prop :=
  R.uncertaintyModel ∧ R.robustPerformance ∧ R.robustStabilityMargin

theorem robust_stability_closed_from_evidence {S : HControlSystem} (R : RobustStabilityPackage S) (E : RobustStabilityEvidence R) : RobustStabilityClosed R :=
  And.intro E.uncertaintyModelClosed (And.intro E.robustPerformanceClosed E.robustStabilityMarginClosed)

end HControlCanonicalLaneLean
end HautevilleHouse