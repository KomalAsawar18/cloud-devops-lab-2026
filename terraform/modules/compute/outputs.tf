output "bastion_public_ip" {
  description = "Public IP of the bastion server"
  value       = aws_instance.bastion.public_ip
}

output "app_private_ip" {
  description = "Private IP of the application server"
  value       = aws_instance.app.private_ip
}

output "cicd_public_ip" {
  description = "Public IP of the CI/CD server"
  value       = aws_instance.cicd.public_ip
}