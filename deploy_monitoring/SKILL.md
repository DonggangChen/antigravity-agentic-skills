---
name: deploy_monitoring
router_kit: DevOpsKit
description: Health checks, metrics, alerting and rollback strategies.
metadata:
  skillport:
    category: operations
    tags: [automation, aws, bash scripting, ci/cd, cloud computing, containerization, deploy monitoring, deployment strategies, devops, docker, gitops, infrastructure, infrastructure as code, kubernetes, linux, logging, microservices, monitoring, orchestration, pipelines, reliability, scalability, security, server management, terraform]      - deploy-cicd
---

# 📊 Deploy Monitoring

> Monitoring, alerting and rollback strategies.

---

## ❤️ Health Checks

```typescript
app.get('/health', (req, res) => {
  res.json({ status: 'healthy', version: process.env.APP_VERSION });
});

app.get('/ready', async (req, res) => {
  await db.$queryRaw`SELECT 1`;
  res.json({ status: 'ready' });
});
```

---

## 📈 Metrics (Prometheus)

```typescript
const httpDuration = new Histogram({
  name: 'http_request_duration_seconds',
  help: 'Duration of HTTP requests',
  labelNames: ['method', 'route', 'status'],
});
```

---

## 🚨 Alert Rules

```yaml
- alert: HighErrorRate
  expr: rate(http_requests_total{status=~"5.."}[5m]) > 0.05
  for: 5m
  labels:
    severity: critical
```

---

## ⏪ Rollback

```bash
# Kubernetes
kubectl rollout undo deployment/app

# Vercel
vercel rollback
```

---

## 🔄 Workflow

> **Kaynak:** [Google SRE Book - Monitoring](https://sre.google/sre-book/monitoring-distributed-systems/) & [Prometheus Best Practices](https://prometheus.io/docs/practices/instrumentation/)

## 🔄 Workflow

> **Source:** [Google SRE Book - Monitoring](https://sre.google/sre-book/monitoring-distributed-systems/) & [Prometheus Best Practices](https://prometheus.io/docs/practices/instrumentation/)

### Phase 1: Observability Instrumentation
- [ ] **Health Checks**: Define `/health` (Liveness) and `/ready` (Readiness) endpoints.
- [ ] **Custom Metrics**: Export application-specific critical metrics (e.g. Order count, Error rate) for Prometheus/Grafana.
- [ ] **Log Centralization**: Collect distributed logs in a center like ELK (Elasticsearch/Logstash/Kibana) or Datadog.

### Phase 2: SLI/SLO & Alerting Setup
- [ ] **Defining SLIs**: Define success indicators (Latency < 200ms, Error rate < 1%).
- [ ] **Alert Groups**: Notify critical errors (P0) via phone/PagerDuty, informational ones via Slack.
- [ ] **Error Budget**: Calculate how much you can go out of your SLO (Error Budget) and stop deploys when approaching the limit.

### Phase 3: Analysis & Incident Response
- [ ] **Dashboarding**: Create real-time dashboards on Grafana showing system health.
- [ ] **Post-Mortem**: Perform Root Cause Analysis (RCA) and document after every major Incident.
- [ ] **Automated Rollback**: Ensure system automatically reverts to previous stable version when critical alert is triggered.

### Checkpoints
| Phase | Verification                                                        |
| ----- | ------------------------------------------------------------------- |
| 1     | Does monitoring automatically activate when a new service is added? |
| 2     | Do alerts contain "Actionable" information?                         |
| 3     | Is PII (Personal Data) masked in logs?                              |

---
*Deploy Monitoring v1.5 - With Workflow*
