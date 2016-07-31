output "id" {
    value = "${azurerm_subnet.mod.id}"
}

output "ip_configurations" {
    value = "${azurerm_subnet.mod.ip_configurations}"
}
