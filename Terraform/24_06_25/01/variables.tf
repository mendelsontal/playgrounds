variable "env" {
  description = "env: dev or prod"
}

variable "image_name" {
  type        = map(string)
  description = "name of the image that will be used"
  default = {
    dev  = "ghost:latest"
    prod = "ghost:alpine"
  }
}
variable "container_name" {
  type = map(string)
  default = {
    dev  = "blog_dev"
    prod = "blog_prod"
  }
}
variable "int_port" {
  default = "2368"
}

variable "ext_port" {
  type = map(string)
  default = {
    dev  = "8081"
    prod = "8080"
  }
}
