locals {
  common_tags = {
    Project = var.project
    Environment = var.environment
    Terraform = "true"
    Name = local.common_name
  }
  common_name = "${var.project}-${var.environment}"
  vpc_final_tags = merge(
    var.vpc_tags,
    local.common_tags
  )

  igw_final_tags = merge(
    var.igw_tags,
    local.common_tags
  )
  az_names = slice(data.aws_availability_zones.available.names, 0, 2)

}

