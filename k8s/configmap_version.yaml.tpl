---
apiVersion: v1
kind: ConfigMap
metadata:
  name: deer-yam-version
data:
  version: "CIRCLE_SHA1"
