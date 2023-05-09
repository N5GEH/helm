{{- define "crate.node.name" -}}{{ .Values.nodeName }}-{{ .Values.myPodIndex }}{{- end -}}

{{- define "crate.initial.master.nodes" -}}{{- $nodeName := .Values.nodeName -}}{{- $replicas := int .Values.replicaCount -}}{{- $masterNodes := list -}}{{- range $i := until $replicas -}}{{- $masterNodes = append $masterNodes (printf "%s-%d" $nodeName $i) -}}{{- end -}}{{- join "," $masterNodes -}}{{- end -}}
