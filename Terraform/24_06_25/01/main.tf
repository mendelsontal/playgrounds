resource "docker_image" "my_ghost" { 
  name = lookup(var.image_name, var.env) 
} 

resource "docker_container" "my_container" { 
name = lookup(var.container_name, var.env) 
image = "${docker_image.my_ghost.image_id}" 
env = [ "database__client=sqlite3", "database__connection__filename=content/data/ghost.db", "database__useNullAsDefault=true", "database__debug=false" ] 
ports { 
    internal = var.int_port 
    external = lookup(var.ext_port, var.env) 
  } 
} 


resource "null_resource" "my_null" { 
provisioner "local-exec" { 
    command = "sleep 10; echo run the script after 10 seconds > run.txt " 
  } 
}