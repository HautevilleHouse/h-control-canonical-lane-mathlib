import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HControlCanonicalLaneLean

structure HInfinityLoopShapingPackage where
  plantModel : Prop
  preCompensator : Prop
  postCompensator : Prop
  shapedPlant : Prop
  normalizedCoprimeFactorization : Prop
  controllerSynthesis : Prop
  robustStabilityMargin : Prop

structure HInfinityLoopShapingEvidence (L : HInfinityLoopShapingPackage) where
  plantModelClosed : L.plantModel
  preCompensatorClosed : L.preCompensator
  postCompensatorClosed : L.postCompensator
  shapedPlantClosed : L.shapedPlant
  normalizedCoprimeFactorizationClosed : L.normalizedCoprimeFactorization
  controllerSynthesisClosed : L.controllerSynthesis
  robustStabilityMarginClosed : L.robustStabilityMargin

def HInfinityLoopShapingClosed (L : HInfinityLoopShapingPackage) : Prop :=
  L.plantModel ∧ L.preCompensator ∧ L.postCompensator ∧
  L.shapedPlant ∧ L.normalizedCoprimeFactorization ∧
  L.controllerSynthesis ∧ L.robustStabilityMargin

theorem h_infinity_loop_shaping_closed_from_evidence
    (L : HInfinityLoopShapingPackage)
    (E : HInfinityLoopShapingEvidence L) : HInfinityLoopShapingClosed L := by
  exact And.intro E.plantModelClosed
    (And.intro E.preCompensatorClosed
      (And.intro E.postCompensatorClosed
        (And.intro E.shapedPlantClosed
          (And.intro E.normalizedCoprimeFactorizationClosed
            (And.intro E.controllerSynthesisClosed E.robustStabilityMarginClosed)))))

end HControlCanonicalLaneLean
end HautevilleHouse