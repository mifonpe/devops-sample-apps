output "this_db_instance_address" {
  description = "The address of the RDS instance"
  value       = "${module.db.this_db_instance_address}"
}

output "this_db_instance_arn" {
  description = "The ARN of the RDS instance"
  value       = "${module.db.this_db_instance_arn}"
}

output "this_db_instance_endpoint" {
  description = "The connection endpoint"
  value       = "${module.db.this_db_instance_endpoint}"
}

output "this_ecr_endpoint" {
  description = "The connection endpoint"
  value       = "${module.ecr.repository_url}"
}
