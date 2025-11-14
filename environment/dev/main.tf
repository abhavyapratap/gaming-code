module "rg" {
  source      = "../../modules/azurerm_resource_group"
  for_each    = var.rg_info
  rg_name     = each.value.name
  rg_location = each.value.location
}

module "stg" {
  depends_on = [ module.rg ]
  source                   = "../../modules/azurerm_stg"
  for_each                 = var.stg_info
  stg_name                 = each.value.name
  location                 = each.value.location
  resource_group_name      = each.value.resource_group_name
  account_replication_type = each.value.account_replication_type
  account_tier             = each.value.account_tier
}

module "container" {
  depends_on = [ module.stg ]
  source             = "../../modules/azurerm_container"
  for_each           = var.container_info
  container_name     = each.value.name
  storage_account_id = module.stg[each.value.storage_account_id].storage_ids
}

output "storage1_id" {
  value = module.stg["stgbhavyaqqq"].storage_ids
}