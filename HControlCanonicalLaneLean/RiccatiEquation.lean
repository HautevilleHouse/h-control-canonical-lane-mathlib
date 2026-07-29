import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HControlCanonicalLaneLean

structure AlgebraicRiccatiPackage where
  matrixEquation : Type u
  stabilizingSolution : Prop
  hamiltonianMatrix : Type v
  spectralDecomposition : Prop
  solutionPositiveDefinite : Prop

structure AlgebraicRiccatiEvidence (R : AlgebraicRiccatiPackage) where
  stabilizingSolutionClosed : R.stabilizingSolution
  spectralDecompositionClosed : R.spectralDecomposition
  solutionPositiveDefiniteClosed : R.solutionPositiveDefinite

def AlgebraicRiccatiClosed (R : AlgebraicRiccatiPackage) : Prop :=
  R.stabilizingSolution ∧ R.spectralDecomposition ∧ R.solutionPositiveDefinite

theorem algebraic_riccati_closed_from_evidence
    (R : AlgebraicRiccatiPackage) (E : AlgebraicRiccatiEvidence R) :
    AlgebraicRiccatiClosed R := by
  exact And.intro E.stabilizingSolutionClosed
    (And.intro E.spectralDecompositionClosed E.solutionPositiveDefiniteClosed)

end HControlCanonicalLaneLean
end HautevilleHouse