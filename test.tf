data "azurerm_subscription" "current" {
}

resource "azurerm_management_group" "example_parent" {
  display_name = "ParentGroup"

  subscription_ids = [
    data.azurerm_subscription.current.subscription_id,
  ]
}