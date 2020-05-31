{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "sakuracloud-exporter.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "sakuracloud-exporter.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "sakuracloud-exporter.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "sakuracloud-exporter.labels" -}}
helm.sh/chart: {{ include "sakuracloud-exporter.chart" . }}
{{ include "sakuracloud-exporter.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "sakuracloud-exporter.selectorLabels" -}}
app.kubernetes.io/name: {{ include "sakuracloud-exporter.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "sakuracloud-exporter.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "sakuracloud-exporter.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}


{{/*

*/}}
{{- define "sakuracloud-exporter.noCollector" -}}
{{ if .Values.noCollector.autoBackup -}}- "--no-collector.auto-backup"{{ end }}
{{ if .Values.noCollector.coupon -}}- "--no-collector.coupon"{{ end }}
{{ if .Values.noCollector.database -}}- "--no-collector.database"{{ end }}
{{ if .Values.noCollector.database -}}- "--no-collector.internet"{{ end }}
{{ if .Values.noCollector.database -}}- "--no-collector.loadBalancer"{{ end }}
{{ if .Values.noCollector.database -}}- "--no-collector.localRouter"{{ end }}
{{ if .Values.noCollector.database -}}- "--no-collector.mobileGateway"{{ end }}
{{ if .Values.noCollector.database -}}- "--no-collector.nfs"{{ end }}
{{ if .Values.noCollector.database -}}- "--no-collector.proxyLb"{{ end }}
{{ if .Values.noCollector.database -}}- "--no-collector.server"{{ end }}
{{ if .Values.noCollector.database -}}- "--no-collector.sim"{{ end }}
{{ if .Values.noCollector.database -}}- "--no-collector.vpcRouter"{{ end }}
{{ if .Values.noCollector.database -}}- "--no-collector.zone"{{ end }}
{{- end }}