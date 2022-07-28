variable "region" {
  description = "AWS region"
  default     = "eu-west-2"
  type        = string
}

variable "project_name" {
  description = "Project (Generic name used across this project)"
  default     = "your-project-ec2"
  type        = string
}

variable "availability_zone" {
  type    = string
  default = "eu-west-2a"
}