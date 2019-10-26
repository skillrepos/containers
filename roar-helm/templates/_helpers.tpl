{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "roar-all.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "roar-all.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Pull in the various container port values.
*/}}
{{- define "roar-all.container-ports" -}}
  {{- range $key, $val := .Values.deployment.ports }}
  - name: {{ $key }}
    containerPort: {{ $val }}
  {{- end -}}
{{- end -}}

{{/*
Pull in the various environment values.
*/}}
{{- define "roar-all.environment-values" -}}
  {{- $namespace := .Values.global.namespace -}}
  {{- range $key, $val := .Values.deployment.env }}
  - name: {{ $key }}
    value: {{ $val }}
  {{- end -}}
{{- end -}}

{{/*
Pull in the various service port values.
*/}}
{{- define "roar-all.service-ports" -}}
  {{- $start := add .Values.global.startingPort .Values.service.portOffset -}}
  {{- range $index, $entry := .Values.service.ports -}}
    {{- $port := split "_" $entry -}}
  - name: {{ $port._0 }}
  port: {{ $port._1 }}
  nodePort: {{ add $start $index }}
{{- end -}}
{{- end -}}


