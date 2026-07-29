import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean

structure LambdaAdmittedObject where
  lambdaTerm: Type
  alphaEquivalence: Prop
  betaReduction: Prop
  confluence: Prop
  normalization: Prop
  conclusion: Prop

structure AdmissibleClass where
  object: LambdaAdmittedObject
  endpointSatisfied: Prop
  remainderRecorded: Prop
  gateWitness: endpointSatisfied ∨ remainderRecorded

def admittedClosure (A: AdmissibleClass): Prop :=
  (A.object.conclusion) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean
end HautevilleHouse
