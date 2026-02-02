# Compute module outputs

output "instance_self_links" {
  description = "Self links of the instances"
  value = [
    google_compute_instance.default.self_link,
    google_compute_instance.secondary.self_link
  ]
}

output "instance_internal_ips" {
  description = "Internal IP addresses of the instances"
  value = [
    google_compute_instance.default.network_interface[0].network_ip,
    google_compute_instance.secondary.network_interface[0].network_ip
  ]
}

output "instance_external_ips" {
  description = "External IP addresses of the instances"
  value = [
    google_compute_instance.default.network_interface[0].access_config[0].nat_ip,
    google_compute_instance.secondary.network_interface[0].access_config[0].nat_ip
  ]
}
