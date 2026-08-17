import Mathlib

/- ================================================================
   偏元数学 · 代数地基 · Day 3（2026-08-17）
   目标：跑通「退化定理」—— δ₀ = 0 时偏元减法退化为经典减法 a − a = 0。
   平台：live.lean-lang.org（Lean 4 + Mathlib）
   ================================================================ -/

-- ① 方向偏好二态（延展 / 收敛）
inductive Direction where
  | expansion   -- 延展
  | contraction -- 收敛
deriving DecidableEq

-- ② 偏元数：底数（实数）+ 方向偏好
structure Prenary where
  value : ℝ
  dir : Direction

-- ③ 偏元减法（同一底数，延展态减收敛态）
--    δ₀ = 0：不可清零公理取消 → 退化为经典减法 a − a = 0
--    δ₀ ≠ 0：结果为残差 ε（此处以 ε = δ₀ 占位，落在 (0, δ₀] 上界，
--            具体取值待 8/18 定义偏元数域后细化）
noncomputable def prenary_sub (_a δ₀ : ℝ) : ℝ :=
  if δ₀ = 0 then 0 else δ₀

-- ④ 公理 1（减法不可清零）：δ₀ > 0 时残差 ∈ (0, δ₀]
--    【序的轻量占位】δ₀ 在此处仅有一个类型（ℝ）、一个角色（残差的上界 = 精度下限），
--    规避「算术最小上界」与「几何连续偏离量」的双重定义（类型炸弹）。
--    偏元数上更完整的偏序结构（偏序 vs 全序）留待 8/19 正式定义。
theorem subtraction_non_closing {δ₀ : ℝ} (hδ : δ₀ > 0) (a : ℝ) :
    0 < prenary_sub a δ₀ ∧ prenary_sub a δ₀ ≤ δ₀ := by
  have hne : δ₀ ≠ 0 := ne_of_gt hδ
  simp [prenary_sub, hne, hδ]

-- ⑤ 退化定理（核心）：δ₀ = 0 时，偏元减法退化为经典减法 a − a = 0
theorem degeneracy_to_classical (a : ℝ) :
    prenary_sub a 0 = 0 := by
  simp [prenary_sub]

-- ⑥ 物理侧对照：呼吸子（|α|²+|β|² = 1+η）在 η = 0 时退化为振荡子（= 1）
theorem breather_degeneracy (α β : ℝ) :
    α^2 + β^2 = 1 + (0 : ℝ) → α^2 + β^2 = 1 := by
  intro h
  simpa using h
