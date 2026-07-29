import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean

structure EvaluationStrategiesPackage where
  callByNameDefined : Prop
  callByValueDefined : Prop
  lazyEvaluationDefined : Prop
  fullBetaReduction : Prop
  normalOrderReduction : Prop
  applicativeOrderReduction : Prop
  strategyEquivalence : Prop

structure EvaluationStrategiesEvidence (E : EvaluationStrategiesPackage) where
  callByNameDefinedClosed : E.callByNameDefined
  callByValueDefinedClosed : E.callByValueDefined
  lazyEvaluationDefinedClosed : E.lazyEvaluationDefined
  fullBetaReductionClosed : E.fullBetaReduction
  normalOrderReductionClosed : E.normalOrderReduction
  applicativeOrderReductionClosed : E.applicativeOrderReduction
  strategyEquivalenceClosed : E.strategyEquivalence

def EvaluationStrategiesClosed (E : EvaluationStrategiesPackage) : Prop :=
  E.callByNameDefined ∧ E.callByValueDefined ∧ E.lazyEvaluationDefined ∧
  E.fullBetaReduction ∧ E.normalOrderReduction ∧ E.applicativeOrderReduction ∧
  E.strategyEquivalence

theorem evaluation_strategies_closed_from_evidence
    (E : EvaluationStrategiesPackage) (Ev : EvaluationStrategiesEvidence E) :
    EvaluationStrategiesClosed E := by
  exact And.intro Ev.callByNameDefinedClosed
    (And.intro Ev.callByValueDefinedClosed
      (And.intro Ev.lazyEvaluationDefinedClosed
        (And.intro Ev.fullBetaReductionClosed
          (And.intro Ev.normalOrderReductionClosed
            (And.intro Ev.applicativeOrderReductionClosed
              Ev.strategyEquivalenceClosed)))))

end FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean
end HautevilleHouse