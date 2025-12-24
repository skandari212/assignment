resource "azurerm_linux_virtual_machine" "linux_vm"{
    for_each = var.vm
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  size                = "Standard_F2"
  admin_username      = each.value.admin_username
  admin_password = each.value.admin_password
  disable_password_authentication = false
  network_interface_ids = [
    data.azurerm_network_interface.datanic[each.key].id
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = each.value.publisher
    offer     = each.value.offer
    sku       = each.value.sku
    version   = "latest"
  }
}