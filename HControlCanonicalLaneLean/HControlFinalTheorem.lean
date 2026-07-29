import HControlCanonicalLaneLean.HControlGateLemmas

namespace HautevilleHouse
namespace HControlCanonicalLaneLean

def ConstrainedHControlClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_hcontrol_endgame (A : AdmissibleClass) :
    ConstrainedHControlClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HControlCanonicalLaneLean
end HautevilleHouse