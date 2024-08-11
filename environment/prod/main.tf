module "lgresourcegroupmodule" {
  source   = "../../module/resource_group"
  lgresmap = var.lgresmapmodule
}

module "lgstrmod" {
  source     = "../../module/storage_account"
  lgstrmap   = var.lgrstrmapmodule
  depends_on = [module.lgresourcegroupmodule]
}

module "lgstrvnetmod" {
  source      = "../../module/virtual_network"
  lgvirnetmap = var.lgstrvnetmodule
  depends_on  = [module.lgresourcegroupmodule]
}
module "lgsubmod" {
  source     = "../../module/subnet"
  lgsubmap   = var.lgsubmodule
  depends_on = [module.lgstrvnetmod]
}
module "lgpubipmodule" {
  source = "../../module/virtual_public_ip"
  depends_on = [ module.lgresourcegroupmodule ]
  lgpipsepmap = var.lgpubipmapmodule

}