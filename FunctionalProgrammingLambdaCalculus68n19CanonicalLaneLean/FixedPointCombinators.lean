import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean

structure FixedPointCombinatorPackage where
  yCombinatorExists : Prop
  fixedPointTheorem : Prop
  recursionSimulation : Prop
  turingCompleteness : Prop
  callByValueFix : Prop
  callByNameFix : Prop

structure FixedPointCombinatorEvidence (F : FixedPointCombinatorPackage) where
  yCombinatorExistsClosed : F.yCombinatorExists
  fixedPointTheoremClosed : F.fixedPointTheorem
  recursionSimulationClosed : F.recursionSimulation
  turingCompletenessClosed : F.turingCompleteness
  callByValueFixClosed : F.callByValueFix
  callByNameFixClosed : F.callByNameFix

def FixedPointCombinatorClosed (F : FixedPointCombinatorPackage) : Prop :=
  F.yCombinatorExists ∧ F.fixedPointTheorem ∧ F.recursionSimulation ∧
  F.turingCompleteness ∧ F.callByValueFix ∧ F.callByNameFix

theorem fixed_point_combinator_closed_from_evidence
    (F : FixedPointCombinatorPackage) (E : FixedPointCombinatorEvidence F) :
    FixedPointCombinatorClosed F := by
  exact And.intro E.yCombinatorExistsClosed
    (And.intro E.fixedPointTheoremClosed
      (And.intro E.recursionSimulationClosed
        (And.intro E.turingCompletenessClosed
          (And.intro E.callByValueFixClosed E.callByNameFixClosed))))

end FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean
end HautevilleHouse