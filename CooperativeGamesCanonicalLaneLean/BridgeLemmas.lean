import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CooperativeGamesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CooperativeGamesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NashEquilibriumClosed A.object

def NashEquilibriumClosed (O : NashAdmittedObject) : Prop :=
  O.hasNashEquilibrium

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CooperativeGamesCanonicalLaneLean
end HautevilleHouse
