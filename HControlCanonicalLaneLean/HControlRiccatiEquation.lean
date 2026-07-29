import HControlCanonicalLaneLean.HControlAdmissibleClass

namespace HautevilleHouse
namespace HControlCanonicalLaneLean

structure RiccatiSolutionPackage where
  matrixSize : Nat
  solutionMatrix : Type u
  algebraicRiccatiEquation : Prop
  stabilizingSolution : Prop
  positiveSemidefinite : Prop
  spectralRadiusCondition : Prop

structure RiccatiSolutionEvidence (R : RiccatiSolutionPackage) where
  algebraicRiccatiEquationClosed : R.algebraicRiccatiEquation
  stabilizingSolutionClosed : R.stabilizingSolution
  positiveSemidefiniteClosed : R.positiveSemidefinite
  spectralRadiusConditionClosed : R.spectralRadiusCondition

def RiccatiSolutionClosed (R : RiccatiSolutionPackage) : Prop :=
  R.algebraicRiccatiEquation ∧ R.stabilizingSolution ∧
  R.positiveSemidefinite ∧ R.spectralRadiusCondition

theorem riccati_solution_closed_from_evidence (R : RiccatiSolutionPackage)
    (E : RiccatiSolutionEvidence R) : RiccatiSolutionClosed R := by
  exact And.intro E.algebraicRiccatiEquationClosed
    (And.intro E.stabilizingSolutionClosed
      (And.intro E.positiveSemidefiniteClosed E.spectralRadiusConditionClosed))

end HControlCanonicalLaneLean
end HautevilleHouse