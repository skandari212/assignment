module "rg" {
source = "../../Modules/Azurerm_resorce_group"
rg = var.rg  
}

module "stg" {
source = "../../Modules/azurerm_storage_account"
depends_on = [module.rg]  
stg= var.stg

}

module "vnet" {
source = "../../Modules/azurerm_virtual_network"
depends_on = [ module.stg ]
vnet = var.vnet
}


module "subnet" {
  source = "../../Modules/azurerm_subnet"
  depends_on = [ module.vnet ]
  subnet= var.subnet
}

module "public_ip" {
  source = "../../Modules/azurerm_public_ip"
 public_ip = var.public_ip
}

module "nic" {
  source = "../../Modules/azurerm_network_interface_card"
depends_on = [ module.public_ip, module.subnet ]
  nic = var.nic
}

module "nsg" {
  source = "../../Modules/azurerm_nsg"
  nsg = var.nsg
  depends_on = [ module.nic, module.public_ip ]
  
}

module "nsg_nic_config" {
  source = "../../Modules/azurerm_nsg_association"
  nsg_nic_config = var.nsg_nic_config
  depends_on = [ module.nsg, module.nic ]
  
}