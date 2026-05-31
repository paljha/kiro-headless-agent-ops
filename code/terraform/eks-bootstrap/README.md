# eks-bootstrap

Workshop-provided Terraform skeleton that brings up an Amazon EKS Auto Mode
cluster in a VPC with public and private subnets across three AZs.

This is the **fallback** module participants use if they don't want to wait
for Kiro to author the equivalent in Module 2/3. The Kiro-authored version
should produce something equivalent (or better, with extra hardening).

## Inputs

| Name | Default | Description |
|---|---|---|
| `region` | `us-west-2` | AWS region |
| `cluster_name` | `kiro-workshop` | EKS cluster name |
| `kubernetes_version` | `1.31` | Kubernetes minor version |
| `vpc_cidr` | `10.42.0.0/16` | VPC CIDR |

## Outputs

| Name | Description |
|---|---|
| `cluster_name` | EKS cluster name |
| `cluster_endpoint` | API server endpoint |
| `cluster_oidc_issuer_url` | For IRSA wiring |
| `region` | The region the cluster is in |
| `kubeconfig_command` | One-liner to update kubeconfig |

## Deploy

```bash
terraform init
terraform apply -auto-approve
aws eks update-kubeconfig --region us-west-2 --name kiro-workshop
```

## Destroy

```bash
terraform destroy -auto-approve
```

EKS Auto Mode tears down its managed nodes automatically.
