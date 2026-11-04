# 專案進度檢核表（Pipeline Checklist）

> 每完成一項打勾，並記錄日期。向長官報告進度時直接截這張表。

## 第 0 階段：可行性（第 1–2 週）
- [x] 建立 meta-pipe 專案結構（2026-11-03）
- [x] PubMed 可行性試搜（55 筆）
- [ ] 查 PROSPERO 有無重複題目
- [ ] CINAHL、華藝試搜
- [ ] 確認第二審查者、統計協助者

## 第 1 階段：研究計畫書（第 2–3 週）
- [x] PICO（`01_protocol/pico.yaml`）
- [x] 納入／排除條件（`eligibility.md`）
- [x] 結果指標（`outcomes.md`）
- [x] 搜尋計畫（`search-plan.md`）
- [ ] 長官／共同作者確認計畫書
- [ ] **PROSPERO 註冊**（必須在開始篩選前完成，記下 CRD 編號）

## 第 2 階段：文獻搜尋（第 4 週）
- [ ] 各資料庫正式搜尋並匯出
- [ ] 去重（`dedupe.bib`）
- [ ] 填寫 `02_search/round-01/log.md`

## 第 3 階段：標題摘要篩選（第 5–6 週）
- [ ] 兩人獨立篩選（`decisions.csv`）
- [ ] 計算 Kappa（目標 ≥0.6）
- [ ] 解決意見分歧

## 第 4 階段：全文篩選（第 7–8 週）
- [ ] 取得全文（`manifest.csv`）
- [ ] 兩人全文篩選（`fulltext_decisions.csv`）
- [ ] **分析類型決策關卡**：Plan A / B / C（`analysis-type-decision.md`）

## 第 5 階段：資料擷取與偏差評估（第 9–11 週）
- [ ] 兩人獨立擷取（`extraction.csv`）
- [ ] RoB 2 評估（`rob2_assessment.csv`）

## 第 6 階段：統計分析（第 12–14 週）
- [ ] 網絡圖、森林圖、league table、SUCRA 排名
- [ ] 異質性、不一致性檢定、敏感度分析、漏斗圖

## 第 7–10 階段：寫作與投稿（第 15–20 週）
- [ ] 稿件（大綱：`07_manuscript/manuscript_outline.md`）
- [ ] GRADE / CINeMA 證據分級
- [ ] PRISMA-NMA 清單逐項核對
- [ ] 投稿
