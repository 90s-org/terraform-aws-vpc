output "vpc_id" {
  value       = aws_vpc.main.id
}

output "public_subnets" {
  value       = aws_subnet.public[*].id
}

output "private_subnets" {
  value       = aws_subnet.private[*].id
}

output "database_subnets" {
  value       = aws_subnet.database[*].id
}

output "database_subnet_group_name" {
    value = aws_db_subnet_group.roboshop.name
}
