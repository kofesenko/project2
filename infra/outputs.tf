output "subnet_staging_public_a_0" {
  value = module.vpc_staging.subnet_staging_public_a[0]
}

output "subnet_staging_private_a_0" {
  value = module.vpc_staging.subnet_staging_private_a[0]
}

output "subnet_production_public_a_0" {
  value = module.vpc_production.subnet_production_public_a[0]
}

output "subnet_production_private_a_0" {
  value = module.vpc_production.subnet_production_private_a[0]
}

output "security_group_staging_public" {
  value = aws_security_group.staging_public.id
}

output "security_group_staging_private" {
  value = aws_security_group.staging_private.id
}

output "security_group_production_public" {
  value = aws_security_group.production_public.id
}

output "security_group_production_private" {
  value = aws_security_group.production_private.id
}