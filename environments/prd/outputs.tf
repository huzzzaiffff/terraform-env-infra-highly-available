# outputs.tf for all environments (dev/stg/prd)

output "app_public_ip" {
  description = "Public IP of the app instance"
  value       = "${var.environment}: ${module.application.app_instance_public_ip}"
}

output "s3_bucket_name" {
  description = "S3 bucket name for the environment"
  value       = "${var.environment}: ${module.application.s3_bucket_name}"
}