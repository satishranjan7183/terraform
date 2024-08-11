resource "azurerm_public_ip" "lgpip" {
    name = "lgpip1"
    location ="canada central"
    resource_group_name = "lg_res_group3"
    allocation_method = "Static"
  
}
resource "azurerm_network_interface" "lgnic" {
    name = "lgnic1"
    resource_group_name = "lg_res_group3"
    location = "canada central"
    ip_configuration {
      name = "lgnicipconf"
      subnet_id = "/subscriptions/40a6948a-f08c-4396-9ede-1776f2f5bc1a/resourceGroups/lg_res_group3/providers/Microsoft.Network/virtualNetworks/lgvnet3/subnets/lgsub3"
      private_ip_address_allocation = "Dynamic"
      public_ip_address_id = azurerm_public_ip.lgpip.id
    }
  
}

resource "azurerm_linux_virtual_machine" "lglinvm" {
    name = "lglinvm1"
    resource_group_name = "lg_res_group3"
    location = "canada central"
    network_interface_ids = [azurerm_network_interface.lgnic.id]
    admin_username = "satish"
    admin_password = "Aryan1215@"
    disable_password_authentication = false
    size = "Standard_F2"
    os_disk {
      storage_account_type = "Standard_LRS"
      caching = "ReadWrite"
    }
    source_image_reference {
     publisher = "Canonical"
     offer = "0001-com-ubuntu-server-jammy"
     sku = "22_04-lts"
     version = "latest"
    }
  
}