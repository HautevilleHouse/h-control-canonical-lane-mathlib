import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HControlCanonicalLaneLean

structure CoprimeFactorizationPackage where
  leftCoprime : Prop
  rightCoprime : Prop
  bezoutIdentity : Prop
  youlaParametrization : Prop
  doublyCoprime : Prop

structure CoprimeFactorizationEvidence (C : CoprimeFactorizationPackage) where
  leftCoprimeClosed : C.leftCoprime
  rightCoprimeClosed : C.rightCoprime
  bezoutIdentityClosed : C.bezoutIdentity
  youlaParametrizationClosed : C.youlaParametrization
  doublyCoprimeClosed : C.doublyCoprime

def CoprimeFactorizationClosed (C : CoprimeFactorizationPackage) : Prop :=
  C.leftCoprime ∧ C.rightCoprime ∧ C.bezoutIdentity ∧ C.youlaParametrization ∧ C.doublyCoprime

theorem coprime_factorization_closed_from_evidence (C : CoprimeFactorizationPackage) (E : CoprimeFactorizationEvidence C) :
    CoprimeFactorizationClosed C := by
  exact And.intro E.leftCoprimeClosed
    (And.intro E.rightCoprimeClosed
      (And.intro E.bezoutIdentityClosed
        (And.intro E.youlaParametrizationClosed E.doublyCoprimeClosed)))

end HControlCanonicalLaneLean
end HautevilleHouse