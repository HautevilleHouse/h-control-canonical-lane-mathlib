import HautevilleHouse.HControlCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace HControlCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end HControlCanonicalLaneLean
end HautevilleHouse