output "internal_ip" {
  value = docker_container.my_container.ip_address
}

output "internal_port" {
  value = docker_container.my_container.ports[0].internal
}

output "external_ip" {
  value = "localhost" # or your host IP if not using localhost
}

output "external_port" {
  value = docker_container.my_container.ports[0].external
}

output "full_access_url" {
  value = "http://localhost:${docker_container.my_container.ports[0].external}"
}
