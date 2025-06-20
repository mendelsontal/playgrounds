resource "docker_image" "nginx" {
    name = "nginx:latest"
}

resource "docker_container" "my_nginx_container" {
    name  = "nginx_task73"
    image = docker_image.nginx.image_id
    ports {
        internal = 80
        external = 80
    }

    volumes {
        host_path      = "${path.module}/index.html"
        container_path = "/usr/share/nginx/html/index.html"
    }
}