{{/*
Expand the name of the chart.
*/}}
{{- define "expense-tracker-frontend.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
*/}}
{{- define "expense-tracker-frontend.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- include "expense-tracker-frontend.name" . -}}
{{- end -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "expense-tracker-frontend.labels" -}}
app: {{ include "expense-tracker-frontend.name" . }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "expense-tracker-frontend.selectorLabels" -}}
app: {{ include "expense-tracker-frontend.name" . }}
{{- end -}}
