resource "azurerm_public_ip" "publicip" {
for_each = var.public_ip
  name                = each.value.publicip_name
  resource_group_name = each.value.resource_group_name
  location            = each.value.resource_group_location
  allocation_method   = "Static"
  sku                 = "standard"
}