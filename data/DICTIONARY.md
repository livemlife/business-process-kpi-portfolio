# データ辞書

粒度：1行1完了タスク。

- `task_id`: 完了タスクの一意ID
- `date`: 完了日 YYYY-MM-DD
- `team`: 架空チーム A/B/C
- `complexity`: Standard/Complex 生成時の難易度
- `phase`: Before 1–6月 / After 7–12月
- `work_minutes`: 作業時間 分 正値
- `wait_minutes`: 待ち時間 分 非負
- `error`: 手戻りあり1 なし0
- `month`: 完了月
- `lead_minutes`: work_minutes+wait_minutes
- `within_sla`: lead_minutes<=120なら1

小数の率は0–1。欠損はCSVの空欄。UTF-8 BOM付き。