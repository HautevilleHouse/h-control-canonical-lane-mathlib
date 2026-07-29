import HControlCanonicalLaneLean.HControlAdmissibleClass

namespace HautevilleHouse
namespace HControlCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.stabilityGuarantee

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end HControlCanonicalLaneLean
end HautevilleHouse