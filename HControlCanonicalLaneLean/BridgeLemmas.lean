import HautevilleHouse.HControlCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace HControlCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HControlWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end HControlCanonicalLaneLean
end HautevilleHouse