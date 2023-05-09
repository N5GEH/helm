{{- define "crate.node.name" -}}{{ .Values.nodeName }}-{{ .Release.Revision | sub 1 -}}{{- end -}}

{{- define "crate.initial.master.nodes" -}}
  {{- $replicas := int .Values.replicaCount -}}
  {{- $masterNodes := list -}}
  {{- range $i := until $replicas -}}
    {{- $masterNodes = append $masterNodes (printf "%s-%d" (include "crateDB.fullname" .) $i) -}}
  {{- end -}}
  {{- join "," $masterNodes -}}
{{- end -}}