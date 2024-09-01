
### 使用env傳入環境參數

**調整背景顏色**

目前環境中有一個Running中的pod，名稱為web。
開啟並檢視目前web的頁面背景顏色。

[開啟畫面(port 30000)]({{TRAFFIC_HOST1_30000}})

請修改web pod設定，加入env參數，參數明細如下：
- key: `BACKGROUND_COLOR`
- value: `red`

修改完成後，再開啟一次頁面進行檢視

> <strong>Note</strong>: 可能需要先將原來的pod刪除