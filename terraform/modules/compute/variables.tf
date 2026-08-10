variable "ami_id" {
  description = "AMI ID for EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "EC2 key pair name"
  type        = string
}

variable "public_subnet_id" {
  description = "Public subnet ID for Bastion"
  type        = string
}

variable "private_subnet_id" {
  description = "Private subnet ID for App Server"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID for the EC2 security groups"
  type        = string
}

variable "iam_instance_profile" {
  description = "IAM instance profile for EC2 instances"
  type        = string
}