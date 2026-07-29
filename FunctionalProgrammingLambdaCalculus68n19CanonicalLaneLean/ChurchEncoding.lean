import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean

structure ChurchEncodingPackage where
  numeralsDefined : Prop
  booleansDefined : Prop
  pairsDefined : Prop
  sumTypesDefined : Prop
  arithmeticSimulated : Prop
  logicSimulated : Prop
  encodingAdequacy : Prop

structure ChurchEncodingEvidence (C : ChurchEncodingPackage) where
  numeralsDefinedClosed : C.numeralsDefined
  booleansDefinedClosed : C.booleansDefined
  pairsDefinedClosed : C.pairsDefined
  sumTypesDefinedClosed : C.sumTypesDefined
  arithmeticSimulatedClosed : C.arithmeticSimulated
  logicSimulatedClosed : C.logicSimulated
  encodingAdequacyClosed : C.encodingAdequacy

def ChurchEncodingClosed (C : ChurchEncodingPackage) : Prop :=
  C.numeralsDefined ∧ C.booleansDefined ∧ C.pairsDefined ∧
  C.sumTypesDefined ∧ C.arithmeticSimulated ∧ C.logicSimulated ∧
  C.encodingAdequacy

theorem church_encoding_closed_from_evidence (C : ChurchEncodingPackage)
    (E : ChurchEncodingEvidence C) : ChurchEncodingClosed C := by
  exact And.intro E.numeralsDefinedClosed
    (And.intro E.booleansDefinedClosed
      (And.intro E.pairsDefinedClosed
        (And.intro E.sumTypesDefinedClosed
          (And.intro E.arithmeticSimulatedClosed
            (And.intro E.logicSimulatedClosed E.encodingAdequacyClosed)))))

end FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean
end HautevilleHouse