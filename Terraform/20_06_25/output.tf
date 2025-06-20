output "Int_IP_address" { 
    value = "${docker_container.my_container.network_data[0].ip_address}" 
} 

output "Ext_IP_address" { 
    value = "${docker_container.my_container.ports[0].ip}" 
}