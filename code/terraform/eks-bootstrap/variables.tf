variable "region" {
  description = "AWS region for the workshop cluster."
  type        = string
  default     = "us-west-2"
}

variable "cluster_name" {
  description = "Name of the EKS Auto Mode cluster."
  type        = string
  default     = "kiro-workshop"
}

variable "kubernetes_version" {
  description = "Kubernetes minor version for the EKS cluster."
  type        = string
  default     = "1.31"
}

variable "vpc_cidr" {
  description = "CIDR block for the workshop VPC."
  type        = string
  default     = "10.42.0.0/16"
}
