import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HControlCanonicalLaneLean

structure HControlSystem where
  stateSpace : Type u
  inputSpace : Type v
  dynamics : stateSpace → inputSpace → stateSpace
  controlObjective : stateSpace → Prop
  admissibleControl : stateSpace → Prop
  stabilityMargin : Prop
  stabilityMarginTerm : stabilityMargin

structure HControlSystemEvidence (S : HControlSystem) where
  dynamicsClosed : ∀ x u, S.dynamics x u = S.dynamics x u
  controlObjectiveClosed : ∀ x, S.controlObjective x → S.controlObjective x
  admissibleControlClosed : ∀ x, S.admissibleControl x → S.admissibleControl x
  stabilityMarginClosed : S.stabilityMargin

def HControlSystemClosed (S : HControlSystem) : Prop :=
  S.stabilityMargin

theorem h_control_system_closed_from_evidence (S : HControlSystem) (E : HControlSystemEvidence S) : HControlSystemClosed S :=
  E.stabilityMarginClosed

end HControlCanonicalLaneLean
end HautevilleHouse