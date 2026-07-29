import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean

structure TypeSystemPackage where
  simpleTypes : Prop
  polymorphicTypes : Prop
  typeInference : Prop
  typeSoundness : Prop
  strongNormalizationTyped : Prop

structure TypeSystemEvidence (T : TypeSystemPackage) where
  simpleTypesClosed : T.simpleTypes
  polymorphicTypesClosed : T.polymorphicTypes
  typeInferenceClosed : T.typeInference
  typeSoundnessClosed : T.typeSoundness
  strongNormalizationTypedClosed : T.strongNormalizationTyped

def TypeSystemClosed (T : TypeSystemPackage) : Prop :=
  T.simpleTypes ∧ T.polymorphicTypes ∧ T.typeInference ∧
  T.typeSoundness ∧ T.strongNormalizationTyped

theorem type_system_closed_from_evidence (T : TypeSystemPackage)
    (E : TypeSystemEvidence T) : TypeSystemClosed T := by
  exact And.intro E.simpleTypesClosed
    (And.intro E.polymorphicTypesClosed
      (And.intro E.typeInferenceClosed
        (And.intro E.typeSoundnessClosed E.strongNormalizationTypedClosed)))

end FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean
end HautevilleHouse