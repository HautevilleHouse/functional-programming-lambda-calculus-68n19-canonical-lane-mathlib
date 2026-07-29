import canonicalLaneMathlib.AdmissibleClass
import FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean.LambdaCalculusSyntax

namespace HautevilleHouse
namespace FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean

inductive SimpleType where
  | base : String → SimpleType
  | arrow : SimpleType → SimpleType → SimpleType

typeOf (ctx : List (String × SimpleType)) (t : LambdaTerm) : Option SimpleType :=
  match t with
  | .var n => ctx.lookup n
  | .abs x body =>
    match typeOf ((x, ?_) :: ctx) body with
    | none => none
    | some τ => some (.arrow ?_ τ)
  | .app f a =>
    match typeOf ctx f, typeOf ctx a with
    | some (.arrow σ τ), some σ' => if σ = σ' then some τ else none
    | _, _ => none

end FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean
end HautevilleHouse
