{{- define "crate.node.name" -}}{{ .Values.nodeName }}-{{ .Release.Revision }}{{- end -}}

{{- define "crate.initial.master.nodes" -}}{{- $nodeName := .Values.nodeName -}}{{- $replicas := .Values.replicaCount -}}{{- $masterNodes := list -}}{{- range $i := until $replicas -}}{{- $masterNodes = append $masterNodes (printf "%s-%d" $nodeName $i) -}}{{- end -}}{{- join "," $masterNodes -}}{{- end -}}
