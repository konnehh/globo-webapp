
variable "region" {
  type        = string
  description = "(Optional) AWS Region to deploy in. Defaults to us-east-1."
  default     = "us-east-1"
}

variable "prefix" {
  type        = string
  description = "(Required) Prefix to use for all resources in this module."
}

variable "environment" {
  type        = string
  description = "(Required) Environment of all resources"
}

variable "billing_code" {
  type        = string
  description = "(Required) Billing code for network resources"
}

# Application variables

variable "ip_range" {
  default = "0.0.0.0/0"
}

variable "ec2_role_name" {
  type        = string
  description = "(Required) role name for ec2 instance profile"
}

variable "api_key_secret_id" {
  type        = string
  description = "Secret ID for the API Key"
}

variable "instance_type" {
  type        = string
  description = "(Optional) EC2 Instance type to use for web app. Defaults to t3.micro."
  default     = "t3.micro"
}


variable "tfe_organization" {
  type        = string
  description = "(required) Name of TFC organisation)"
}

variable "tfe_workspace_name" {
  type        = string
  description = "(required) Name of networking space to get information"

}

variable "playbook_repository" {
  type        = string
  description = "(Required) URI of the playbook to be executed on the instance"
}