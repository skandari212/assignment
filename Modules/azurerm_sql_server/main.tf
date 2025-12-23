resource "azurerm_sql_server" "mysql_server" {
    for_each = var.mysql_server
  name                         = each.value.name
  resource_group_name          = each.value.resource_group_nam
  location                     = each.value.location
  version                      = "12.0"
  administrator_login          = each.value.administrator_login
  administrator_login_password = each.value.administrator_login_password

  tags = {
    environment = "production"
  }
}