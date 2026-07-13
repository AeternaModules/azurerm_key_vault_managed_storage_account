variable "key_vault_managed_storage_accounts" {
  description = <<EOT
Map of key_vault_managed_storage_accounts, attributes below
Required:
    - key_vault_id
    - name
    - storage_account_id
    - storage_account_key
Optional:
    - regenerate_key_automatically
    - regeneration_period
    - tags
EOT

  type = map(object({
    key_vault_id                 = string
    name                         = string
    storage_account_id           = string
    storage_account_key          = string
    regenerate_key_automatically = optional(bool)
    regeneration_period          = optional(string)
    tags                         = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.key_vault_managed_storage_accounts : (
        length(v.name) <= 127
      )
    ])
    error_message = "[from keyvault.ValidateNestedItemName: invalid when len(value) > 127]"
  }
  validation {
    condition = alltrue([
      for k, v in var.key_vault_managed_storage_accounts : (
        contains(["key1", "key2"], v.storage_account_key)
      )
    ])
    error_message = "must be one of: key1, key2"
  }
  validation {
    condition = alltrue([
      for k, v in var.key_vault_managed_storage_accounts : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 11 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

