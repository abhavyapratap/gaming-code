rg_info = {
  "rg-bhavya" = {
    name     = "rg-bhavya"
    location = "centralindia"
  }
}

stg_info = {
  "stgbhavyaqqq" = {
    name                     = "bhavyastorageqqqq"
    location                 = "centralindia"
    resource_group_name      = "rg-bhavya"
    account_replication_type = "LRS"
    account_tier             = "Standard"
  }

  "stggamingqqqq" = {
    name                     = "gamingstorageqqqq"
    location                 = "centralindia"
    resource_group_name      = "rg-bhavya"
    account_replication_type = "LRS"
    account_tier             = "Standard"
  }
}

container_info = {
  "container-1" = {
    name     = "bhavyacontainer"
    storage_account_id = "stgbhavyaqqq"
  }

  "container-2" = {
    name     = "gamingcontainer"
    storage_account_id = "stggamingqqqq"
  }
}
