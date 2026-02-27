# MultiClaw Repository Topology (Display Names + URL Slugs)

## Objective
Separate concerns so each lane can evolve with focused permissions, CI, and ownership while still interoperating.

> Naming convention: **Display names use caps** (e.g., `MultiClaw-MLFlow`) even when GitHub URL slugs remain lowercase.

## Recommended Repo Set

## 1) `MultiClaw-Core`  
GitHub path: `AIML-Solutions/MultiClaw-core`
Scope:
- OpenClaw orchestration patterns
- Skill architecture patterns
- Subagent segmentation and permission model
- AgentOps/CloudFinOps governance docs

Suggested source from current workspace:
- `projects/MultiClaw/docs/*`
- shared architecture/reporting automation scripts
- non-domain-specific skills templates

## 2) `MultiClaw-Quant-Tools`  
GitHub path: `AIML-Solutions/MultiClaw-quant-tools`
Scope:
- QuantConnect LEAN workflows
- data pipelines, ingestion, validation
- Postgres + Hasura + Qdrant quant stack
- options greeks/pricing framework
- blockchain quant lane (Hardhat, chain analysis)

Suggested source from current workspace:
- `projects/quantconnect/*`

## 3) `MultiClaw-Blockchain`  
URL slug: `multiclaw-blockchain`
Scope:
- token-chain scanning and enrichment
- smart contract testing/deploy workflows
- blockchain API + MCP tool interfaces

Suggested source from current workspace:
- `projects/blockchain-lab/*`

## 4) `MultiClaw-MLFlow`  
GitHub path: `AIML-Solutions/MultiClaw-MLFlow`
Scope:
- MLflow experiment tracking and model registry
- PyTorch/HF training pipelines
- dataset/version workflows
- model promotion and evaluation gates

Suggested source from current workspace:
- `projects/mlflow-lab/*`

## 5) `MultiClaw-LLM`  
URL slug: `multiclaw-llm`
Scope:
- LangChain/LangGraph agent engineering
- model routing, benchmarks, and evaluation gates
- internal LLM query engine APIs

Suggested source from current workspace:
- `projects/llm-dept/*`

## 6) `MultiClaw-Frontend`  
URL slug: `multiclaw-frontend`
Scope:
- Next.js dashboards and visualization products
- options/greeks and crypto analytics UX
- PDF/report rendering surfaces

Suggested source from current workspace:
- `projects/frontend-studio/*`

## 7) `MultiClaw-Public-Library`  
URL slug: `multiclaw-public-library`
Scope:
- living technical documentation and onboarding assets
- architecture playbooks, examples, and stack guides

Suggested source from current workspace:
- `projects/multiclaw-public-library/*`

## 8) `ProRepoAgentOps`
Scope:
- cross-repo operational discipline
- quality gates, release policy, and execution hygiene
- deployment/automation oversight patterns

## 9) `SnorkelTools`
Scope:
- specialized utilities and support tooling
- reusable helpers for data/agentic workflows

## 10) (Optional later) `MultiClaw-CloudFinOps`
Scope:
- cloud cost telemetry
- runtime policy, budgets, rightsizing automation
- infra efficiency playbooks

## Why split this way
- Narrow-scoped permissions per repo
- Cleaner CI/CD and release boundaries
- Easier contributor specialization
- Lower blast radius for secrets and pipeline changes

## Branching baseline
- `main` protected
- short-lived feature branches
- PR checks required for merge

## Minimum CI per repo
- lint + tests
- secret scanning
- dependency scan
- container/image checks where relevant

## Migration pattern
1. Create empty GitHub repos (private/public as staged)
2. Initialize local git in each project lane
3. Add `.gitignore` tuned per lane
4. Commit baseline scaffold
5. Push to GitHub
6. Add CODEOWNERS + branch protections
