# 搜尋計畫（Search Plan）

| 資料庫 | 必要性 | 備註 |
|---|---|---|
| PubMed/MEDLINE | 必要 | meta-pipe 可自動搜尋（需 PUBMED_API_KEY） |
| Scopus | 必要（meta-pipe 最低要求 ≥2 資料庫） | 需機構 API key，可問院內圖書館 |
| Embase | 建議 | 可經圖書館帳號手動匯出 |
| Cochrane CENTRAL | 建議 | 試驗登錄最完整 |
| **CINAHL** | **護理題目強烈建議** | 需手動匯出 .ris，再匯入 meta-pipe 去重 |
| PsycINFO | 建議 | 行為介入研究多 |
| 華藝 Airiti Library | 建議 | 台灣護理期刊 |
| ClinicalTrials.gov | 建議 | 找尚未發表的試驗 |

- 時間範圍：建庫至搜尋日
- 語言：英文、中文
- 補充：檢查納入研究與相關回顧文獻的參考文獻（滾雪球）
- 搜尋式：`02_search/round-01/queries.txt`
- 若修改搜尋式，**另開 round-02，不要覆蓋 round-01**（meta-pipe 規則，審查委員可追溯）
