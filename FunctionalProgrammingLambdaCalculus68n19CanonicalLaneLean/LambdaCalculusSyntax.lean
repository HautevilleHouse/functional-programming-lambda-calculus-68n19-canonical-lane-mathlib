import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean

structure LambdaTerm where
  var : String
  absVar : String
  absBody : LambdaTerm
  appLeft : LambdaTerm
  appRight : LambdaTerm
  isVar : Prop
  isAbs : Prop
  isApp : Prop
  varValue : String
  absVarValue : String
  absBodyValue : LambdaTerm
  appLeftValue : LambdaTerm
  appRightValue : LambdaTerm
  varCase : isVar → var = varValue
  absCase : isAbs → (absVar = absVarValue ∧ absBody = absBodyValue)
  appCase : isApp → (appLeft = appLeftValue ∧ appRight = appRightValue)

define LambdaTermCases (t : LambdaTerm) : Prop :=
  t.isVar ∨ t.isAbs ∨ t.isApp

theorem lambda_term_cases (t : LambdaTerm) : LambdaTermCases t :=
  by
    have h := t.varCase (by
      have h' : t.isVar ∨ ¬ t.isVar := em _
      exact h'.elim (fun hv => hv) (fun hn => False.elim (by
        have ha : t.isAbs ∨ ¬ t.isAbs := em _
        exact ha.elim (fun _ => by
          have ha' : t.isAbs := ha
          exact ha')
        (fun na => 
          have ha' : False := by
            have ha'' : t.isApp ∨ ¬ t.isApp := em _
            exact ha''.elim (fun _ => by
              have ha''' : t.isApp := ha''
              exact ha''')
            (fun _ => by
              tauto)
          exact ha'.elim))))
    exact Or.inl h

end FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean
end HautevilleHouse
