{{- define "service" }}
apiVersion: v1
kind: Service
metadata:
  creationTimestamp: null
  labels:
    app: devx-helloworld-springboot-gohpj
    backstage.io/kubernetes-id: devx-helloworld-springboot-gohpj
    slot: {{ .slot }}
  name: devx-helloworld-springboot-gohpj-{{ .slot }}
spec:
  ports:
  - name: 8080-8080
    port: 8080
    protocol: TCP
    targetPort: 8080
  selector:
    slot: {{ .slot }}
{{- end }}
