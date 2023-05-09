{{- define "crate.node.name" -}}crate-{{ .Release.Revision | sub 1 -}}{{- end -}}

{{- define "crate.initial.master.nodes" -}}{{- $nodeName := .Values.nodeName -}}{{- $replicas := int .Values.replicaCount -}}{{- $masterNodes := list -}}{{- range $i := until $replicas -}}{{- $masterNodes = append $masterNodes (printf "%s-%d" $nodeName $i) -}}{{- end -}}{{- join "," $masterNodes -}}{{- end -}}
