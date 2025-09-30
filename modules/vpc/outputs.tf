output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.this.id
}

output "public_subnet_id" {
  description = "IDs of the public subnets"
  value       = aws_subnet.public.id
}
