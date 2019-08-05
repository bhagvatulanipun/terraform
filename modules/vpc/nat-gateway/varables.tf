variable "project_name" {
  description = "Project Name Prefix"
  default = ""
}

variable "common_tags" {
  description = "Common Tags"
  type = "map"
  default = {}
}

variable "public_subnet_ids" {
  type    = "list"
  default = []
  description = "Public Subnet IDs"
}

variable "associate_route_table_ids" {
  type = "list"
  description = "Route Table IDs"
}

variable "nat_gateways_allocation_ids" {
  type = "list"
  description = "NAT Gateway Allocation IDs"
}


