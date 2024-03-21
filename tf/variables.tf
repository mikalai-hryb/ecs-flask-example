variable "region" {
  description = "AWS Region"
  type        = string
  default     = "eu-central-1"
  # sensitive = true
}

variable "cluster_name" {
  default = "demo-cluster"
}