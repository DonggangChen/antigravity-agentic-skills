---
name: compliance_analyst
router_kit: SecurityKit
description: Certification, compliance requirements and regulatory pathway research guide.
metadata:
  skillport:
    category: research
    tags: [architecture, automation, best practices, clean code, coding, collaboration, compliance, compliance analyst, debugging, design patterns, development, documentation, efficiency, git, optimization, productivity, programming, project management, quality assurance, refactoring, software engineering, standards, testing, utilities, version control, workflow]      - standards
---

# 📋 Compliance Analyst

> Certification and compliance research guide.

---

## 📋 Compliance Areas

| Area              | Standards        | Examples             |
| ----------------- | ---------------- | -------------------- |
| **Security**      | ISO 27001, SOC 2 | Data protection      |
| **Privacy**       | GDPR, KVKK, CCPA | Personal data        |
| **Accessibility** | WCAG, ADA        | Web access           |
| **Industry**      | HIPAA, PCI-DSS   | Healthcare, payments |

---

## 🔧 Compliance Checklist

### GDPR
```checklist
- [ ] Consent management
- [ ] Right to deletion
- [ ] Data portability
- [ ] Privacy policy
- [ ] DPO appointed
- [ ] Breach notification
```

### SOC 2
```checklist
- [ ] Security controls
- [ ] Availability SLA
- [ ] Processing integrity
- [ ] Confidentiality
- [ ] Privacy practices
```

---

## 📊 Gap Analysis Template

```markdown
# Compliance Gap Analysis: [Standard]

## Current State
| Control        | Required | Current | Gap |
| -------------- | -------- | ------- | --- |
| Access Control | Yes      | Partial | ⚠️   |
| Encryption     | Yes      | Yes     | ✅   |
| Logging        | Yes      | No      | ❌   |

## Remediation Plan
| Gap     | Action               | Owner  | Deadline |
| ------- | -------------------- | ------ | -------- |
| Logging | Implement audit logs | DevOps | Q1       |

## Timeline to Compliance
- Gap remediation: 3 months
- Audit prep: 1 month
- Certification: 2 months
```

---

## 🎯 Certification Path

```
Assessment → Gap Analysis → Remediation → Audit → Certification
    └─────────────────────────────────────────────┘
                      6-12 months
```

## 🔄 Workflow

> **Source:** [Compliance-As-Code (SCAP)](https://github.com/ComplianceAsCode/content) & [EU AI Act Compliance Framework](https://artificialintelligenceact.eu/)

### Phase 1: Regulatory Scoping & DORA/AI Act
- [ ] **Inventory**: Determine which regulations (DORA, NIS2, EU AI Act) the system is subject to.
- [ ] **Risk Categorization**: Classify AI systems according to risk levels (Unacceptable, High, Limited, Minimal).
- [ ] **Standard Alignment**: Map current processes with ISO 27001 or NIST frameworks.

### Phase 2: Audit & Gap Assessment
- [ ] **Evidence Collection**: Collect policy documents, log records and system configurations.
- [ ] **Gap Analysis**: Report differences between standard and actual (Checklist based).
- [ ] **Impact Assessment**: Analyze financial and operational impact of new legal regulations on business processes.

### Phase 3: Remediation & Continuous Compliance
- [ ] **Mitigation Plan**: Create action plan to fix gaps (e.g. MFA requirement).
- [ ] **Monitoring**: Monitor compliance status with automated dashboards (SIEM/GRC tools).
- [ ] **Certification Prep**: Prepare "Audit-Ready" file for independent auditors.

### Checkpoints
| Phase | Verification                                    |
| ----- | ----------------------------------------------- |
| 1     | Were new "EU AI Act" criteria considered?       |
| 2     | Is data processing inventory (ROPA) up to date? |
| 3     | Was Third-party supplier risk analyzed?         |

---
*Compliance Analyst v1.5 - With Workflow*
