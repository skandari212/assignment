data "azurerm_subnet" "nicsubnet"{
    for_each = var.nic
name = each.value.name
virtual_network_name = each.value.virtual_network_name
resource_group_name = each.value.resource_group_name  
}

data "azurerm_public_ip" "nicpip"{
    for_each = var.nic
 name                = each.value.name
 resource_group_name = each.value.resource_group_name
}