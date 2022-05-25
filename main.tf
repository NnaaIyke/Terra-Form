  # The setup for management group creation in Azure #
data "azurerm_subscription" "current" {
}

resource "azurerm_management_group" "managementgroup_parent" {
  display_name = var.managementgroup

  subscription_ids = [
    data.azurerm_subscription.current.subscription_id,
  ]
}