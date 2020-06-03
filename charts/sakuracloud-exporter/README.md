sakuracloud-exporter
====================
Prometheus exporter for SakuraCloud metrics.

Current chart version is `0.11.1`

## Chart Values
| Key | Type | Default | Description |
|-----|------|---------|-------------|
| nameOverride | string | `""` |  |
| fullnameOverride | string | `""` |  |
| image.repository | string | `"sacloud/sakuracloud_exporter"` |  |
| image.tag | string | `"0.11.0"` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| securityContext | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| resources | object | `{}` |  |
| replicaCount | int | `1` |  |
| service.nodePort | int | `30954` |  |
| service.port | int | `9542` |  |
| service.type | string | `"ClusterIP"` |  |
| affinity | object | `{}` | affinity rule for Kubernetes |
| tolerations | object | `{}` |  |
| serviceMonitor.annotations | object | `{}` |  |
| serviceMonitor.enabled | bool | `false` |  |
| serviceMonitor.labels | object | `{}` |  |
| rateLimit | int | `5` |  |
| debugMode | bool | `true` |  |
| listenPort | int | `9542` |  |
| metricsPath | string | `"metrics"` |  |
| token.token | string | `""` |  |
| token.secret | string | `""` |  |
| token.existingTokenSecret | string | `""` |  |
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
| fake.enabled | bool | `false` |  |

## SAKURA Cloud token using existing Secrets

### Generate secret
```
kubectl create secret generic sakuracloud-exporter -o yaml --dry-run=server \
    --from-literal=token=${TOKEN} \
    --from-literal=secret=${SECRET} > secrets.yaml
```