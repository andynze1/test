variable "aws_region" {
  description = "The AWS region where resources will be created"
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}
# variable "subnet_ids" {
#   description = "A list of subnet IDs for the EKS cluster"
#   type        = list(string)
# }

variable "public_subnet_ids" {
  description = "List of public subnet IDs"
  type        = list(string)
}

variable "private_subnet_ids" {
  description = "List of private subnet IDs"
  type        = list(string)
}

variable "security_group_id" {
  description = "Security group ID for EKS"
  type        = string
}

variable "node_instance_type" {
  description = "The instance type for the EKS node group."
  type        = string
  default     = "t2.medium"
}

variable "node_capacity_type" {
  description = "The node type for the EKS node group."
  type        = string
  default     = "ON_DEMAND"
}

variable "node_group_desired_size" {
  description = "Desired size of the node group"
  type        = number
  default     = 2
}

variable "node_group_max_size" {
  description = "Maximum size of the node group"
  type        = number
  default     = 3
}

variable "node_group_min_size" {
  description = "Minimum size of the node group"
  type        = number
  default     = 1
}

# AWS Account ID
variable "aws_account_id" {
  description = "AWS User Account ID"
  type        = string
  default     = "461086874723"
}

# AWS Account Name
variable "aws_account_name" {
  description = "AWS User Account name"
  type        = string
  default     = "andy"
}

variable "cluster_endpoint_private_access" {
  description = "Indicates whether or not the Amazon EKS private API server endpoint is enabled."
  type        = bool
  default     = false
}

variable "cluster_endpoint_public_access" {
  description = "Indicates whether or not the Amazon EKS public API server endpoint is enabled. When it's set to `false` ensure to have a proper private access with `cluster_endpoint_private_access = true`."
  type        = bool
  default     = true
}

variable "cluster_endpoint_public_access_cidrs" {
  description = "List of CIDR blocks which can access the Amazon EKS public API server endpoint."
  type        = list(string)
  default     = ["0.0.0.0/0"]
}
