# Compute module variables

variable "instance_count" {
  description = "Number of instances to create"
  type        = number
  default     = 2
}

variable "machine_type" {
  description = "GCP machine type for instances"
  type        = string
  default     = "e2-micro"
}

variable "image" {
  description = "Boot image for instances"
  type        = string
  default     = "debian-cloud/debian-11"
}
