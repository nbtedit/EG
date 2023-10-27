import EuclideanGeometry.Foundation.Index

noncomputable section

-- All exercises are from Shan Zun's book Exercise 1

namespace EuclidGeom

variable {P : Type _} [EuclideanPlane P]

namespace Shan_Problem_1_3
/- Let $\triangle ABC$ be an isosceles triangle in which $AB = AC$. Let $D$ be a point in the extension of $AB$ such that $BD = AB$. Let $E$ be the midpoint of $AB$.

Prove that $CD = 2 \cdot CE$. -/

-- Let $\triangle ABC$ be an isosceles triangle in which $AB = AC$.
variable {A B C : P} {hnd : ¬ colinear A B C} {hisoc : (▵ A B C).IsIsoceles}
-- $D$ is a point in the extension of $AB$
variable {D : P} {hd_1 : D LiesInt (SEG_nd A B (b_ne_a (hnd := hnd))).extension}
-- We have $BD=AB$
{hd_2 : (SEG B D).length = (SEG A B).length}
-- $E$ is the midpoint of $AB$
variable {E : P} {he : E = (SEG A B).midpoint}

theorem Shan_Problem_1_3 : (SEG C D).length = 2 * (SEG C E).length := sorry

end Shan_Problem_1_3

namespace Shan_Problem_1_4
/- Let $\triangle ABC$ be a triangle in which $\angle BCA = 2 \cdot \angle CBA$. Let $AD$ be the height of $\triangle ABC$ over $BC$.

Prove that $BD = AC + CD$.-/

-- We have triangle $\triangle ABC$
variable {A B C : P} {hnd : ¬ colinear A B C}
-- Claim: $A \ne B$ and $A \ne C$ and $B \ne C$.
lemma a_ne_b : A ≠ B := sorry
lemma b_ne_c : B ≠ C := sorry
lemma c_ne_a : C ≠ A := sorry
-- We have $\angle BCA = 2 \cdot \angle CBA$
variable {hang : ∠ B C A b_ne_c c_ne_a.symm = 2 * ∠ C B A b_ne_c.symm a_ne_b}
-- $AD$ is the height of $\triangle ABC$
variable {D : P} {hd : D = perp_foot A (LIN B C b_ne_c.symm)}

theorem Shan_Problem_1_4 : (SEG B D).length = (SEG A C).length + (SEG C D).length := sorry

end Shan_Problem_1_4
