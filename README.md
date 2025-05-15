# 📊 Real-Time Data Processing Platform

Distributed Platform for ingestion, asynchronous processing and analytical exposure of real time data.

---

## 🚀 Overview

Scalable system oriented towards streaming data. It uses of microservices and asynchronous communication to ensure performance under load and API security.

- Arquitectura: Microservicios + Event-Driven + CQRS
- Backend: FastAPI + Celery
- Storage: PostgreSQL (particionated) + Redis (cache)
- Security: OAuth2 + JWT

---

## 🧩 Main components

```plaintext
┌─────────────┐    ┌──────────────┐    ┌─────────────────┐
│Data Sources │───▶│ Ingestion API│───▶│Validation Service│
└─────────────┘    └──────────────┘    └─────────────────┘
                                             │
                                             ▼
┌───────────────┐   ┌──────────────┐   ┌────────────────────┐
│ Analytics API │◀──│ Query Service│◀──│Processing Workers  │
└───────────────┘   └──────────────┘   └────────────────────┘
       │                   │                    │
       ▼                   ▼                    ▼
┌──────────────┐   ┌──────────────┐   ┌────────────────────┐
│Cache Layer   │   │Message Broker│   │Database + Aggregator│
└──────────────┘   └──────────────┘   └────────────────────┘
```