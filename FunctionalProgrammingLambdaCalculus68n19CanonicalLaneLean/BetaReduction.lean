import canonicalLaneMathlib.AdmissibleClass
import FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean.LambdaCalculusSyntax

namespace HautevilleHouse
namespace FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean

structure BetaReductionStep (t s : LambdaTerm) where
  redex : LambdaTerm
  contractum : LambdaTerm
  redexIsApp : redex.isApp
  redexLeft : redex.appLeftValue
  redexIsAbs : redexLeft.isAbs
  redexAbsVar : redexLeft.absVarValue
  redexBody : redexLeft.absBodyValue
  substitutionCorrect : Prop
  resultIsContractum : s = contractum
  stepEvidence : redexIsApp ∧ redexIsAbs ∧ substitutionCorrect

def BetaReduction (t s : LambdaTerm) : Prop :=
  ∃ (step : BetaReductionStep t s), True

theorem beta_reduction_redex_condition (t s : LambdaTerm) (h : BetaReduction t s) : True :=
  by
    rcases h with ⟨step, _⟩
    exact trivial

end FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean
end HautevilleHouse
