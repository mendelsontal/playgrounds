module "docker_image" {
  source = "./modules/docker_image"
  image_name = "${image_name}"
}