resource "docker_image" "nginx" {
  name = "nginx:latest"
}

resource "docker_container" "nginx_container" {
  name  = "my-nginx"
  image = docker_image.nginx.name
  ports {
    internal = 80
    external = 80
  }

    volumes {
        host_path      = abspath("${path.module}/index.html")
        container_path = "/usr/share/nginx/html/index.html"
    }
}