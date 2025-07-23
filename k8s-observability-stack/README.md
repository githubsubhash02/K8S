# Kubernetes Observability Stack with Helm

This repository contains Helm-based installation scripts and configuration files to deploy a full observability stack on Kubernetes, including:

- 📊 **Prometheus** (Metrics collection)
- 📈 **Grafana** (Metrics visualization)
- 📂 **Loki** (Log aggregation)
- 🔥 **Fluent Bit** (Log shipping)

---

## 📁 Project Structure

```bash
.
├── helm-values/
│   ├── prometheus-values.yaml
│   ├── grafana-values.yaml
│   ├── loki-values.yaml
│   └── fluent-bit-values.yaml
├── scripts/
│   ├── install-prometheus.sh
│   ├── install-grafana.sh
│   ├── install-loki.sh
│   └── install-fluent-bit.sh
└── README.md

#Installation 

1. Clone the Repository
git clone https://github.com/githubsubhash02/K8S
cd /k8s-observability

2. Create a Namespace
cd /manifests
kubectl create namespace monitoring

3. Install Components
./scripts/install-prometheus.sh
./scripts/install-grafana.sh
./scripts/install-loki.sh
./scripts/install-fluent-bit.sh

#Validate Setup
kubectl port-forward svc/grafana -n monitoring 3000:80

