sakuracloud-exporter
====================
Prometheus exporter for SakuraCloud metrics.

Current chart version is `0.11.1`





## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| debugMode | bool | `true` |  |
| fake.enabled | bool | `false` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"sacloud/sakuracloud_exporter"` |  |
| image.tag | string | `"0.11.0"` |  |
| listenPort | int | `9542` |  |
| metricsPath | string | `"metrics"` |  |
| nameOverride | string | `""` |  |
| fullnameOverride | string | `""` |  |
| noCollector.autoBackup | bool | `false` |  |
| noCollector.coupon | bool | `false` |  |
| noCollector.database | bool | `false` |  |
| noCollector.internet | bool | `false` |  |
| noCollector.loadBalancer | bool | `false` |  |
| noCollector.localRouter | bool | `false` |  |
| noCollector.mobileGateway | bool | `false` |  |
| noCollector.nfs | bool | `false` |  |
| noCollector.proxyLb | bool | `false` |  |
| noCollector.server | bool | `false` |  |
| noCollector.sim | bool | `false` |  |
| noCollector.vpcRouter | bool | `false` |  |
| noCollector.zone | bool | `false` |  |
| podSecurityContext | object | `{}` |  |
| rateLimit | int | `5` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| securityContext | object | `{}` |  |
| service.port | int | `9542` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceMonitor.annotations | object | `{}` |  |
| serviceMonitor.enabled | bool | `false` |  |
| serviceMonitor.labels | object | `{}` |  |
| token.secret | string | `""` |  |
| token.token | string | `""` |  |
| tolerations | object | `{}` |  |
