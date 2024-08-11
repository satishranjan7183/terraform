lgresmapmodule = {
  lg_res_group3 = "canada central"
}

lgrstrmapmodule = {
  lgstr3 = {
    location                 = "canada central"
    account_tier             = "Standard"
    resource_group_name      = "lg_res_group3"
    account_replication_type = "LRS"
  }
}

lgstrvnetmodule = {
  lgvnet3 = {
    resource_group_name = "lg_res_group3"
    location            = "canada central"
    address_space       = ["10.0.0.0/16"]
  }
}

lgsubmodule = {
  lgsub3 = {
    resource_group_name  = "lg_res_group3"
    virtual_network_name = "lgvnet3"
    address_prefixes     = ["10.0.0.0/17"]
  }
}

lgpubipmapmodule = {
  lgpubip3 = {
  location = "canada central"
  allocation_method = "Static"
  resource_group_name = "lg_res_group3"
  }
}