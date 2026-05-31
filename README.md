# kiro-headless-agent-ops

Starter repo for the **Building a DevOps Pipeline on AWS with Kiro Headless**
workshop on AWS Workshop Studio.

## Contents

```
.
├── .github/workflows/         # GitHub Actions for Kiro-driven IaC and PR review
├── .kiro/agents/              # Custom Kiro agents (planner, iac-author, reviewer)
├── code/
│   ├── kubernetes/            # FastAPI Deployment, Service, Ingress, ArgoCD Application
│   ├── sample-app/            # FastAPI source + Dockerfile
│   └── terraform/eks-bootstrap/   # EKS Auto Mode skeleton
└── README.md                  # This file
```

## What to do next

Follow the workshop's **Prerequisites** module to:

1. Confirm AWS access in `us-west-2`
2. Install local tools (AWS CLI, Terraform, kubectl, Helm, Git, `uv`)
3. Install Kiro CLI 2.0+
4. Generate your own Kiro API key (Pro, Pro+, or Power tier)
5. Push this repo to your GitHub account and add `KIRO_API_KEY` as a secret
6. Run the workshop's smoke test to confirm everything works
