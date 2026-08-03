rgsmod = {
  rg1 = {
    name     = "Rgdisney"
    location = "central india"
  }
}
virtual_network = {
  vnet1 = {
        name                = "vnetdisney"
        location            = "central india"
        resource_group_name = "Rgdisney"
        address_space       = ["10.0.0.0/16"]
  }
}
subnet = {
  subnet1 = {
        name          = "frontend-subnet"
        resource_group_name  = "Rgdisney"
        virtual_network_name = "vnetdisney"
        address_prefixes     = ["10.0.1.0/24"]
  }
  }

public_ip = {
  pip1 = {
        name                = "frontend-pip"
        resource_group_name = "Rgdisney"
        location            = "central india"
        allocation_method   = "Static"
  }
}
vm = {
  vm1 = {
        nic_name            = "frontend-vm-nic"
        location            = "central india"
        nic_resource_group_name = "Rgdisney"
        nic_subnet_name         = "frontend-subnet"
        nic_virtual_network_name = "vnetdisney"
        nic_public_ip_name      = "frontend-pip"
        vm_name             = "frontend-vm"
        size                = "Standard_D4_v5"
        admin_username      = "Admin_shashankji"
        admin_password      = "Admin_shashankji12"
  }
 
}