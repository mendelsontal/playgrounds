resource "docker_image" "my_nginx" {
  name = "${var.image_name}"
}

resource "docker_container" "my_container" {
  name  = "${var.container_name}"
  image = "${docker_image.my_nginx.image_id}"

  ports {
    internal = "${var.int_port}"
    external = "${var.ext_port}"
  }
}