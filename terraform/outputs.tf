output "bastion_public_ip" {
  value = module.compute.bastion_public_ip
}

output "app_private_ip" {
  value = module.compute.app_private_ip
}

output "role_arn" {
  description = "ARN of the EC2 IAM role"
  value       = module.iam.role_arn
}