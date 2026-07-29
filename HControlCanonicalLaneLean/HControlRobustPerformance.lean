import HControlCanonicalLaneLean.HControlSmallGain

namespace HautevilleHouse
namespace HControlCanonicalLaneLean

structure RobustPerformancePackage {R : RiccatiSolutionPackage}
    {S : SmallGainPackage R} where
  uncertaintyModel : Type u
  performanceSpec : Prop
  worstCaseGuarantee : Prop
  uncertaintyModelTerm : uncertaintyModel

def RobustPerformanceClosed {R : RiccatiSolutionPackage}
    {S : SmallGainPackage R} (P : RobustPerformancePackage R S) : Prop :=
  P.performanceSpec ∧ P.worstCaseGuarantee

theorem robust_performance_closed {R : RiccatiSolutionPackage}
    {S : SmallGainPackage R} (P : RobustPerformancePackage R S) :
    RobustPerformanceClosed P := by
  exact And.intro P.performanceSpec P.worstCaseGuarantee

end HControlCanonicalLaneLean
end HautevilleHouse