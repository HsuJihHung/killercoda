
### 使用secret傳入環境參數

**調整API Token**

[開啟畫面(port 30000)]({{TRAFFIC_HOST1_30000}})

請建立secret，並修改web pod設定，以環境變數方式傳入secret參數，參數明細如下：
- key: `API_TOKEN`
- value: `Aa123456`

建立configMap:

```
kubectl create secret generic demo-secret \
  --from-literal API_TOKEN='Aa123456' \
  --dry-run=client -o yaml
```{{copy}}

使用方式:
```yaml
env:
- name: API_TOKEN # 傳入環境參數名稱
  valueFrom:
    secretKeyRef:
      name: demo-secret # secret名稱
      key: API_TOKEN # secret key名稱
```


修改完成後，再開啟一次頁面進行檢視

> <strong>Note</strong>: 需要先將原來的pod刪除