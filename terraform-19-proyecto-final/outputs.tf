output "vpc_id" {
  description = "ID de la VPC creada"
  value       = aws_vpc.vpc_principal.id
}

output "ec2_id" {
  description = "ID de la instancia EC2"
  value       = aws_instance.ec2_publica.id
}

output "ec2_public_ip" {
  description = "Dirección IP pública de la instancia EC2 (si existe)"
  value       = aws_instance.ec2_publica.public_ip
}

output "bucket_name" {
  description = "Nombre final generado del bucket de S3"
  value       = aws_s3_bucket.bucket_proyecto.id
}