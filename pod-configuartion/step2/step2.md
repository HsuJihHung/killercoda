
### 使用configMap傳入環境參數

**調整歡迎文字**

[開啟畫面(port 30000)]({{TRAFFIC_HOST1_30000}})

請建立configMap，並修改web pod設定，以環境變數方式傳入configMap參數，參數明細如下：
- key: `WELCOME_TEXT`
- value: `歡迎來到設定教學`

建立configMap:

`kubectl create configmap demo-config
  --from-literal=WELCOME_TEXT=歡迎來到設定教學 
  --dry-run=client -o yaml`{{exec}}

使用方式:
```yaml
env:
- name: WELCOME_TEXT
  valueFrom:
    configMapKeyRef:
      name: 
      key: WELCOME_TEXT
```

修改完成後，再開啟一次頁面進行檢視

> <strong>Note</strong>: 需要先將原來的pod刪除