output "cluster_name" {
  description = "EKS cluster name."
  value       = module.eks.cluster_name
}

output "cluster_endpoint" {
  description = "EKS API server endpoint."
  value       = module.eks.cluster_endpoint
}

output "cluster_oidc_issuer_url" {
  description = "OIDC issuer URL for IRSA."
  value       = module.eks.cluster_oidc_issuer_url
}

output "region" {
  description = "AWS region."
  value       = var.region
}

output "kubeconfig_command" {
  description = "Run this to update your kubeconfig."
  value       = "aws eks update-kubeconfig --region ${var.region} --name ${module.eks.cluster_name}"
}
