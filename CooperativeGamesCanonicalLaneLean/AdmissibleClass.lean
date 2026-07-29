import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CooperativeGamesCanonicalLaneLean

structure NashAdmittedObject where
  game : Type u
  players : Nat
  strategies : Type v
  utility : Type w
  isFiniteGame : Prop
  hasNashEquilibrium : Prop
  conclusion : hasNashEquilibrium

structure AdmissibleClass where
  object : NashAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NashEquilibriumClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CooperativeGamesCanonicalLaneLean
end HautevilleHouse
