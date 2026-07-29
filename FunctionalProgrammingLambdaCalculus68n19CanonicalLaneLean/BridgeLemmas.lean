import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LambdaWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FunctionalProgrammingLambdaCalculus68n19CanonicalLaneLean
end HautevilleHouse