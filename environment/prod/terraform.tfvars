lgresmapmodule = {
  lg_res_group2 = "east us"
}

lgrstrmapmodule = {
  lgstr1 = {
    location                 = "east us"
    account_tier             = "Standard"
    resource_group_name      = "lg_res_group1"
    account_replication_type = "LRS"
  }
}

lgstrvnetmodule = {
  lgvnet1 = {
    resource_group_name = "lg_res_group1"
    location            = "east us"
    address_space       = ["10.0.0.0/16"]
  }
}

lgsubmodule = {
  lgsub1 = {
    resource_group_name  = "lg_res_group1"
    virtual_network_name = "lgvnet1"
    address_prefixes     = ["10.0.0.0/17"]
  }
}