# 資料擷取欄位說明（Data Dictionary）

> **一列 = 一個研究組別（arm）**。例如一篇 RCT 有「音樂治療組」和「一般照護組」，就填兩列，`study_id` 相同。NMA 軟體需要這種「長格式」。

## 研究基本資料
| 欄位 | 說明 | 填寫規則 |
|---|---|---|
| `study_id` | 研究代號 | 第一作者姓+年份，如 `Chen2019` |
| `first_author`, `year`, `journal` | 作者、年份、期刊 | 照原文 |
| `country` | 國家 | |
| `setting` | 場域 | `community` / `nursing_home` / `hospital` |
| `design` | 設計 | `RCT` / `cluster_RCT` / `crossover_RCT` |

## 對象特徵（判斷「可遞移性」用：各研究的人是否夠像）
| 欄位 | 說明 |
|---|---|
| `dementia_type` | AD / VaD / mixed / unspecified |
| `dementia_severity` | mild / moderate / severe / mixed |
| `mmse_mean` | MMSE 平均分數 |
| `age_mean`, `female_pct` | 平均年齡、女性比例 |
| `n_total` | 研究總隨機人數 |

## 組別與介入
| 欄位 | 說明 | 填寫規則 |
|---|---|---|
| `arm` | 組別名稱 | 照原文 |
| `node` | **網絡節點代碼** | `ENV` 環境 / `TECH` 科技 / `EXER` 運動 / `SENS` 感官 / `PSY` 心理社會 / `CG` 照顧者訓練 / `MULTI` 多元 / `UC` 一般照護 |
| `intervention_detail` | 措施內容 | 一句話描述 |
| `frequency_duration` | 頻率與期間 | 如「每週 3 次、每次 30 分、共 8 週」 |
| `deliverer` | 執行者 | 護理師 / 治療師 / 照顧者 / 研究人員 |
| `n_arm` | 該組分析人數 | 優先填 ITT 人數 |

## 結果數據（只填有報告的；沒有就留空）
| 欄位 | 說明 |
|---|---|
| `wander_instrument` | 遊走量表名稱 |
| `wander_mean_post`, `wander_sd_post` | 介入後平均值、標準差 |
| `wander_mean_change`, `wander_sd_change` | 若只有前後變化量則填這兩欄 |
| `lost_events`, `falls_events`, `restraint_events` | 該組發生事件人數（二分結果） |
| `cmai_*`, `zbi_*`, `qol_*` | 激躁、照顧者負荷、生活品質的平均值與標準差 |
| `followup_weeks` | 追蹤週數 |
| `rob2_overall` | `low` / `some_concerns` / `high` |

## 常見陷阱（小白必看）
1. **原文只給 SE（標準誤）或 95% CI，沒給 SD** → 先填在 `notes`，之後用公式換算：SD = SE × √n。
2. **原文只有中位數、四分位距** → 記在 `notes`，分析時再用 Wan 等人的方法估算。
3. **圖表才有數據** → 用 WebPlotDigitizer 讀圖，並在 `notes` 註明「digitized」。
4. **兩人獨立擷取後再比對**，不一致處要記錄如何解決。
