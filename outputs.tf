output "key_vault_managed_storage_accounts" {
  description = "All key_vault_managed_storage_account resources"
  value       = azurerm_key_vault_managed_storage_account.key_vault_managed_storage_accounts
}
output "key_vault_managed_storage_accounts_key_vault_id" {
  description = "List of key_vault_id values across all key_vault_managed_storage_accounts"
  value       = [for k, v in azurerm_key_vault_managed_storage_account.key_vault_managed_storage_accounts : v.key_vault_id]
}
output "key_vault_managed_storage_accounts_name" {
  description = "List of name values across all key_vault_managed_storage_accounts"
  value       = [for k, v in azurerm_key_vault_managed_storage_account.key_vault_managed_storage_accounts : v.name]
}
output "key_vault_managed_storage_accounts_regenerate_key_automatically" {
  description = "List of regenerate_key_automatically values across all key_vault_managed_storage_accounts"
  value       = [for k, v in azurerm_key_vault_managed_storage_account.key_vault_managed_storage_accounts : v.regenerate_key_automatically]
}
output "key_vault_managed_storage_accounts_regeneration_period" {
  description = "List of regeneration_period values across all key_vault_managed_storage_accounts"
  value       = [for k, v in azurerm_key_vault_managed_storage_account.key_vault_managed_storage_accounts : v.regeneration_period]
}
output "key_vault_managed_storage_accounts_storage_account_id" {
  description = "List of storage_account_id values across all key_vault_managed_storage_accounts"
  value       = [for k, v in azurerm_key_vault_managed_storage_account.key_vault_managed_storage_accounts : v.storage_account_id]
}
output "key_vault_managed_storage_accounts_storage_account_key" {
  description = "List of storage_account_key values across all key_vault_managed_storage_accounts"
  value       = [for k, v in azurerm_key_vault_managed_storage_account.key_vault_managed_storage_accounts : v.storage_account_key]
}
output "key_vault_managed_storage_accounts_tags" {
  description = "List of tags values across all key_vault_managed_storage_accounts"
  value       = [for k, v in azurerm_key_vault_managed_storage_account.key_vault_managed_storage_accounts : v.tags]
}

