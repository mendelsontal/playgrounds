variable "env" {
    description = "env: dev or prod"
}

variable "image_name" {
    type = "map"
    description = "name of the image that will be used"
    default = {
        dev  = "ghost:latest"
        prod = "ghost:alpine" 
    }
}

variable "container_name" { 
    type = "map"
    default = {
        dev = "blog_dev"
        prod = "blog_prod"
        }
}

variable "int_port" { 
    default = "80" 
} 

variable "ext_port" { 
    default = "2368" 
}