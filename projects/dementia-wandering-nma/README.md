# 非藥物介入對失智症遊走行為之網絡統合分析

**Non-pharmacological Interventions for Wandering Behavior in Dementia: A Systematic Review and Network Meta-analysis**

| 項目 | 內容 |
|---|---|
| 目標期刊 | Ageing Research Reviews（備選：Int J Nurs Stud、Geriatric Nursing） |
| 研究類型 | 系統性回顧 + 網絡統合分析（NMA），預設 Plan B／C 備案 |
| 使用工具 | [meta-pipe](https://github.com/htlin222/meta-pipe)（AI 輔助統合分析流程） |
| 品質模式 | `strict`（雙人篩選、PROSPERO、GRADE 全做，可投稿等級） |
| 建立日期 | 2026-11-03 |

---

## 為什麼做這個題目？（臨床痛點）

急診後送病房常收治失智長者，**遊走、離床、走失**會造成跌倒、管路滑脫，也可能讓病人離開病房。目前常見的處理方式是**約束**或**加派人力看守**，但約束有傷害風險，人力也不夠。

**研究問題**：環境改造、科技設備、運動、音樂等非藥物措施，**哪一種最能減少遊走？** 結果可以作為病房採購設備、訂定照護標準的實證依據。

---

## 資料夾地圖：每一步放在哪裡

```
dementia-wandering-nma/
├── TOPIC.txt                  ← 研究題目（meta-pipe 讀這個檔開始）
├── 00_overview/feasibility.md ← ⭐ 先看：可行性評估與 Plan A/B/C
├── 01_protocol/               ← 研究計畫書：PICO、納入排除條件、結果指標、搜尋計畫、決策紀錄
├── 02_search/round-01/        ← 各資料庫搜尋式、搜尋紀錄
├── 03_screening/round-01/     ← 標題摘要篩選表（兩人各填一份）
├── 04_fulltext/               ← 全文清單、全文篩選表
├── 05_extraction/             ← 資料擷取表、欄位說明、RoB 2 偏差評估
├── 06_analysis/               ← 統計分析圖表（meta-pipe 用 R 自動產生）
├── 07_manuscript/             ← 稿件大綱與正文
├── 08_reviews/                ← GRADE 證據分級、模擬審稿意見
└── 09_qa/pipeline-checklist.md← ⭐ 進度檢核表（向長官報告用）
```

---

## 下一步要做什麼？（照順序）

1. **讀 `00_overview/feasibility.md`**，完成可行性檢核表（約 4 小時）
2. **找第二審查者**：雙人篩選是期刊的基本要求
3. **請長官確認 `01_protocol/` 計畫書**，然後註冊 PROSPERO
4. **跑 meta-pipe**（見下方），讓 AI 處理搜尋、去重、初篩建議、統計與畫圖
5. 每一步完成就在 `09_qa/pipeline-checklist.md` 打勾

---

## 怎麼搭配 meta-pipe 使用

這個資料夾已依 meta-pipe 的標準結構建好，可以直接放進 meta-pipe：

```bash
git clone https://github.com/htlin222/meta-pipe.git
cd meta-pipe && bash setup.sh && bash verify_environment.sh
cp -r <本專案路徑>/projects/dementia-wandering-nma projects/
```

接著在 meta-pipe 資料夾開啟 Claude Code，輸入：

> **「See projects/dementia-wandering-nma/TOPIC.txt and continue」**

需要準備：
- `PUBMED_API_KEY`（免費，到 NCBI 帳號申請）
- Scopus API key（問院內圖書館）
- 電腦安裝 Python（uv）、R、Quarto（建議請資訊或研究部同仁協助一次裝好）

> ⚠️ meta-pipe 為「學術、非商業使用」授權，論文方法段需引用：
> Lin HT, Yeh JT. meta-pipe: AI-assisted, end-to-end meta-analysis pipeline with reproducible tooling. GitHub; 2026.

---

## 給長官的一頁摘要

- **臨床價值**：找出最有效的「不約束」遊走照護措施，可直接轉成病房標準作業與設備採購依據
- **方法嚴謹度**：依 PRISMA-NMA 指引、PROSPERO 預先註冊、雙人獨立篩選與擷取、RoB 2 偏差評估、GRADE／CINeMA 證據分級
- **風險控管**：已預先設定文獻不足時的備案（Plan B pairwise／Plan C scoping review），任何一條路線都能產出可投稿的論文
- **時程**：約 20 週（詳見 `09_qa/pipeline-checklist.md`）
