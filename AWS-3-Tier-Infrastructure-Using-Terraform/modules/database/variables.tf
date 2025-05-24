variable "database_cluster_identifier" {
  type = string
}
variable "database_cluster_engine" {
  type = string
}
variable "database_cluster_engine_version" {
  type = string
}
variable "database_cluster_availability_zones" {
  type = set(string)
}
variable "database_name" {
  type = string
}
variable "database_cluster_master_username" {
  type = string

}
variable "database_cluster_master_password" {
  type = string
}
variable "database_cluster_backup_retention_period" {
  type = string
}
variable "database_cluster_preferred_backup_window" {
  type = string
}

# instance for the database the variables are defiend here

variable "database_instance_count" {
  type = number
}
variable "database_instance_identifier" {
  type = string
}
variable "database_instance_instance_class" {
  type = string
}