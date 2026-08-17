# prenary-math-lean-degeneracy

偏元数学退化定理在 Lean 4 中的形式化验证。Comparator 独立二次验证通过，哈希 d978b86b88c5f55fe7c93844574b2531a90d0c3bb2777a7cd3d18340f10cf85b

## 主题

偏元数学「退化定理」——当精度下限 δ₀ = 0 时，偏元减法退化为经典减法（a − a = 0），偏元数学包容经典数学作为其边界情形（偏元 ⊇ 经典）。

## 文件

- `prenary_degeneracy_Day3_20260817.lean` — 代数地基第 1 层形式化代码

## 形式化内容（三条定理，全部 No goals）

1. `subtraction_non_closing` — 公理 1（减法不可清零）：δ₀ > 0 时残差 ∈ (0, δ₀]
2. `degeneracy_to_classical` — 退化定理（核心）：δ₀ = 0 → a − a = 0
3. `breather_degeneracy` — 物理侧对照：呼吸子 η = 0 退化为振荡子

## 验证

- 平台：live.lean-lang.org（Lean v4.34.0-rc1 + Mathlib）
- Lean 内核：No goals（All Messages 0）
- Comparator 独立二次验证：通过
- SHA256：d978b86b88c5f55fe7c93844574b2531a90d0c3bb2777a7cd3d18340f10cf85b

## 许可证

CC BY-NC-ND 4.0

---

老陈与AI的深夜实验室 发布 请笑纳
