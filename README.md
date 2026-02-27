# MultiClaw-Core 🦞

[![Core Quality Gate](https://github.com/AIML-Solutions/multiclaw-core/actions/workflows/ci.yml/badge.svg)](https://github.com/AIML-Solutions/multiclaw-core/actions/workflows/ci.yml)
[![Website](https://img.shields.io/badge/site-live-0ea5e9)](https://aiml-solutions.github.io/multiclaw-frontend/)
[![License: MIT](https://img.shields.io/badge/license-MIT-22c55e.svg)](LICENSE)

**MultiClaw-Core** is the architecture + governance command layer for AIML Solutions.

It defines how specialized departments (quant, mlflow, llm, blockchain, frontend, docs) operate with clear boundaries, measurable outputs, and cost-aware model routing.

## 🧭 Why this repository exists

MultiClaw avoids the common “single giant AI project” failure mode by separating concerns:

- operating model and department boundaries
- model routing policy and escalation rules
- cross-repo release standards
- reporting and decision hygiene

## 🦞 Ecosystem map

- [**MultiClaw-Core**](https://github.com/AIML-Solutions/multiclaw-core)
- [**MultiClaw-Quant-Tools**](https://github.com/AIML-Solutions/multiclaw-quant)
- [**MultiClaw-MLFlow**](https://github.com/AIML-Solutions/multiclaw-mlflow)
- [**MultiClaw-Blockchain**](https://github.com/AIML-Solutions/multiclaw-blockchain)
- [**MultiClaw-LLM**](https://github.com/AIML-Solutions/multiclaw-llm)
- [**MultiClaw-Frontend**](https://github.com/AIML-Solutions/multiclaw-frontend)
- [**MultiClaw-Public-Library**](https://github.com/AIML-Solutions/multiclaw-public-library)
- [**ProRepoAgentOps**](https://github.com/AIML-Solutions/ProRepoAgentOps)
- [**SnorkelTools**](https://github.com/AIML-Solutions/SnorkelTools)

## 📚 Core documents

- [`docs/SCOPE.md`](docs/SCOPE.md)
- [`docs/REPO_TOPOLOGY.md`](docs/REPO_TOPOLOGY.md)
- [`docs/AGENT_MODEL_ROUTING.md`](docs/AGENT_MODEL_ROUTING.md)
- [`docs/ROADMAP.md`](docs/ROADMAP.md)
- [`docs/DEPARTMENTS.md`](docs/DEPARTMENTS.md)
- [`docs/README.md`](docs/README.md)

## 🎯 Current focus

1. Tighten quality/release gates across public repos.
2. Keep cost-speed-quality model routing explicit.
3. Make outputs stakeholder-ready (docs + website + release notes).
4. Keep runway discipline while shipping production-grade assets.

## 📰 Reporting

- Strategic and technical briefings: [`reports/`](reports/)
- Snapshot automation: [`scripts/capture_snapshot.sh`](scripts/capture_snapshot.sh)

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md).

## License

MIT — see [LICENSE](LICENSE).
