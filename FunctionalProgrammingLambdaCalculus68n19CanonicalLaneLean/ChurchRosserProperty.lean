import canonicalLaneMathlib.AdmissibleClass
import FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean.LambdaCalculusAdmissibleClass

namespace HautevilleHouse
namespace FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean

structure ChurchRosserPackage where
  betaReduction: Type
  diamondProperty: Prop
  confluence: Prop
  uniqueNormalForms: Prop

structure ChurchRosserEvidence (C: ChurchRosserPackage) where
  diamondPropertyClosed: C.diamondProperty
  confluenceClosed: C.confluence
  uniqueNormalFormsClosed: C.uniqueNormalForms

def ChurchRosserClosed (C: ChurchRosserPackage): Prop :=
  C.diamondProperty ∧ C.confluence ∧ C.uniqueNormalForms

theorem church_rosser_closed_from_evidence (C: ChurchRosserPackage) (E: ChurchRosserEvidence C):
    ChurchRosserClosed C := by
  exact And.intro E.diamondPropertyClosed (And.intro E.confluenceClosed E.uniqueNormalFormsClosed)

end FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean
end HautevilleHouse
