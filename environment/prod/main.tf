module "rg" {
  source      = "../../modules/azurerm_resource_group"
  for_each    = var.rg_info
  rg_name     = each.value.name
  rg_location = each.value.location
}