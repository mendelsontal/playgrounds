output "image_output" {
  description = "The ID of the pulled Docker image"
  value       = docker_image.app.id
}