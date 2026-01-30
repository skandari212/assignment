rg = {
    rgdev = {
        name = "rg-atharv"
        location = "centralindia"
    }   
}

stg = {
    stgdev ={
 name                     = "myappstorage"
  resource_group_name      = "rg-atharv"
  location                 = "centralindia"
  account_tier             = "Standard"
  account_replication_type = "GRS"     
    }
   
}


vnet = {
    vnetdev = {
  name                = "dev-vnet"
  address_space       = [ "10.0.0.1/16" ]
  location            = "centralindia"
  resource_group_name = "rg-atharv"
    }
}

subnet = {
  subnetdev = {
    name                 = "front-subnet"
  resource_group_name  = "rg-atharv"
  virtual_network_name = "dev-vnet"
  address_prefixes     = ["10.0.1.0/24"]
}

subnetdev2 = {
    name                 = "back-subnet"
  resource_group_name  = "rg-atharv"
  virtual_network_name = "dev-vnet"
  address_prefixes     = ["10.0.2.0/24"]
}
  }

public_ip={
  publicip1 ={
  name= "atharv_pip"
 resource_group_name  = "rg-atharv"
   location            = "centralindia"
  }
  
  publicip2 ={
  name= "atharv_pip"
 resource_group_name  = "rg-atharv"
   location            = "centralindia"
  }
}

nic = {
  nic1 = {
    name= "nic1"
    location= "centralindia"
    resource_group_name= "rg-atharv"
    virtual_network_name = "atharv_vnet"
  }

   nic2 = {
    name= "nic2"
    location= "centralindia"
    resource_group_name= "rg-atharv"
    virtual_network_name = "atharv_vnet"
  }
  
}

nsg = {
  nsg1 = {
    name                = "atharv-nsg"
    location            = "centralindia"
    resource_group_name = "rg-atharv"
  }
  nsg2 = {
    name                = "atharv-nsg2"
    location            = "centralindia"
    resource_group_name = "rg-atharv"
  }
}

nsg_nic_config = {
  nic1 = {
    name = "nic1"
    name= "nsg_app"
    resource_group_name = "rg-atharv"
  }
  nic2 = {
    name = "nic2"
    name= "nsg_app2"
    resource_group_name = "rg-atharv"
  }
}

vm={
  vm1 = {
    name = "linuxvm1"
  resource_group_name   = "rg-atharv"
    location = "centralindia"
    admin_username = "adminuser"
    admin_password = "P@ssword1234"
    datanic_name= "nic1"
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
   
  }

vm2 = {
    name = "linuxvm2"
    resource_group_name   = "rg-atharv"
    location = "centralindia"
    admin_username = "adminuser"
    admin_password = "P@ssword1234!"
    datanic_name= "nic2"
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
  }
}
