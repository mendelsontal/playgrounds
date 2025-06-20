variable "image_name" { 
    default = "nginx" 
    description = "name of the image that will be used" 
} 
variable "container_name" { 
    default = "my_container" 
} 
variable "int_port" { 
    default = "80" 
} 

variable "ext_port" { 
    default = "2368" 
}