# G*Power 樣本數設定步驟

> 軟體：G*Power 3.1（免費，https://www.psychologie.hhu.de/arbeitsgruppen/allgemeine-psychologie-und-arbeitspsychologie/gpower）
> 研究問題：SARC-CalF 陽性組和陰性組的「住院相關失能（HAD）發生率」是否不同 → **兩個獨立比例的比較**

---

## 方法一：z 檢定（主要方法，與計畫書一致）

### 步驟

| 步驟 | 欄位 | 選擇／輸入 |
|---|---|---|
| 1 | **Test family** | `z tests` |
| 2 | **Statistical test** | `Proportions: Difference between two independent proportions` |
| 3 | **Type of power analysis** | `A priori: Compute required sample size – given α, power, and effect size` |
| 4 | Tail(s) | `Two` |
| 5 | Proportion p2 | `0.45`（SARC-CalF 陽性組的 HAD 發生率） |
| 6 | Proportion p1 | `0.25`（SARC-CalF 陰性組的 HAD 發生率） |
| 7 | α err prob | `0.05` |
| 8 | Power (1-β err prob) | `0.80` |
| 9 | Allocation ratio N2/N1 | `1`（兩組人數相同） |
| 10 | 按 | **Calculate** |

### 預期輸出

```
Sample size group 1 = 89
Sample size group 2 = 89
Total sample size   = 178
Actual power        ≈ 0.80
```

再手動加上流失率：178 ÷ (1 − 0.10) = 197.8 → **收案 200 人**

### 欄位白話說明

| 欄位 | 意思 |
|---|---|
| Tail(s) = Two | 雙尾：不預設哪一組比較高。比單尾保守，審查委員比較能接受 |
| p1、p2 | 兩組「會發生 HAD 的比例」，來自文獻與研究者假設（見計畫書第 7 節） |
| α = 0.05 | 願意承受 5% 的機會「誤判有差異」（其實沒有差異） |
| Power = 0.80 | 如果兩組真的有差，有 80% 的機會偵測出來 |
| Allocation ratio | 第 2 組人數 ÷ 第 1 組人數 |

---

## 方法二：Fisher 精確檢定（較保守，統計師可能會用）

| 欄位 | 選擇 |
|---|---|
| Test family | `Exact` |
| Statistical test | `Proportions: Inequality, two independent groups (Fisher's exact test)` |
| 其餘設定 | 同方法一（Two tails、p1 = 0.25、p2 = 0.45、α = 0.05、Power = 0.80、Allocation ratio = 1） |

**預期輸出**：每組約 **98 人**，合計約 196 人 → 除以 0.9 ≈ **218 人**

> 為什麼比較多？精確檢定不用常態近似，結果比較保守。小樣本時常用，本研究兩種方法都可以接受。
> 精確檢定的檢定力會隨樣本數上下跳動，G*Power 可能顯示 97 或 98，都屬正常。

---

## 敏感度設定：如果陽性比例不是 50%

收案到 100 人時，若 SARC-CalF 陽性比例偏高，只要改 **Allocation ratio N2/N1**，其他不變：

| 陽性比例 | Allocation ratio N2/N1（陽性 ÷ 陰性） | 陽性組 | 陰性組 | 合計 | ÷0.9 收案數 |
|---|---|---|---|---|---|
| 50% | 1 | 89 | 89 | 178 | 198 → 200 |
| 55% | 1.22 | 99 | 81 | 180 | 200 |
| **60%** | **1.5** | **112** | **75** | **187** | **208 → 210** |
| 65% | 1.86 | 128 | 69 | 197 | 219 → 220 |

> 前提：p2 = 陽性組（0.45），所以 N2 = 陽性組人數。

---

## 計畫書可直接使用的寫法

> 本研究以 G*Power 3.1 估算樣本數，採 z 檢定比較兩獨立比例（雙尾）。參考文獻，65 歲以上急性住院病人住院相關失能發生率為 30%–37%（Giacomino et al., 2023; Loyd et al., 2020），假設 SARC-CalF 陽性組與陰性組發生率分別為 45% 與 25%。設定 α = 0.05、檢定力 0.80、兩組人數比 1:1，每組需 89 人，共 178 人；考量 10% 流失率，預計收案 200 人。

---

## 給長官的備註

- 上述預期輸出是用相同公式計算，並以精確機率驗算；**不是用 G*Power 實際跑出來的截圖**。請自己用 G*Power 跑一次並截圖，放進計畫書附錄，審查委員會更放心。
- 若 G*Power 結果和這裡差 1–2 人，屬於四捨五入差異，不影響結論。
