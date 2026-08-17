[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.21974956.svg)](https://doi.org/10.5281/zenodo.21974956)

# 偏元数学退化定理 · Lean 4 形式化验证

### Prenary Mathematics Degeneracy Theorem · Lean 4 Formal Verification

## 概述

偏元数学的退化定理——"当精度下限 δ₀ = 0 时，偏元减法退化为经典减法（a − a = 0）"——在 Lean 4 中完成形式化验证。**3 个定理全部通过内核证明与 Comparator 独立二次验证**，从机器层面证明：**偏元数学不是推翻经典数学，而是严格包含经典数学（δ₀ = 0 即退化）。**

## 定理清单

| 定理 | 命题 | 结果 |
|:--|:--|:--|
| `subtraction_non_closing` | 减法不可清零公理：δ₀ > 0 时残差 ∈ (0, δ₀] | ✅ |
| `degeneracy_to_classical` | 退化定理（核心）：δ₀ = 0 → a − a = 0 | ✅ |
| `breather_degeneracy` | 呼吸子 η = 0 退化为振荡子（物理侧对照） | ✅ |

## 验证记录

| 项 | 值 |
|:--|:--|
| 平台 | live.lean-lang.org · Lean 4.34.0-rc1 + Mathlib |
| 内核 | No goals（3 定理全部通过） |
| Comparator | Successfully validated（独立二次验证） |
| Challenge Hash | `d978b86b88c5f55fe7c93844574b2531a90d0c3bb2777a7cd3d18340f10cf85b` |
| 本地 SHA256 | `d978b86b88c5f55fe7c93844574b2531a90d0c3bb2777a7cd3d18340f10cf85b`（双哈希一致） |
| 验证时间 | 2026-08-17 |
| DOI | `10.5281/zenodo.21974956` |

## 文件说明

- `prenary_degeneracy_Day3_20260817.lean` — Lean 4 形式化代码
- `evidence/` — 内核 No goals、Comparator 验证截图

## 复现方式

1. 打开 https://live.lean-lang.org/
2. 粘贴 `prenary_degeneracy_Day3_20260817.lean` 内容
3. 点 Run，每个 `theorem` 下方显示 `No goals` 即通过

## 作者

陈松（Song Chen）· ORCID: 0009-0002-9510-2239 · GitHub: [falluck2025](https://github.com/falluck2025)

## 许可

本代码与证明记录采用 [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/)（署名-非商业-禁止演绎）。

---

——老陈与AI的深夜实验室 发布 请笑纳——
