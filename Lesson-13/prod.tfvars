# Auto Fill variables for PROD

#File names can be  as:
# terraform.tfvars
# prod.auto.tfvars
# dev.auto.tfvars


region                     = "eu-west-2"
instance_type              = "t2.small"
enable_detailed_monitoring = true

allow_ports = ["80", "443"]

common_tags = {
  Owner       = "Sekator"
  Project     = "Phoenix"
  CostCenter  = "123477"
  Environment = "prod"
}
