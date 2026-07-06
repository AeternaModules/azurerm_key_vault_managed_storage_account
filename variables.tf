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
    regenerate_key_automatically = optional(bool) # Default: false
    regeneration_period          = optional(string)
    tags                         = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.key_vault_managed_storage_accounts : (
        contains(["key1", "key2"], v.storage_account_key)
      )
    ])
    error_message = "must be one of: key1, key2"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_key_vault_managed_storage_account's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from keyvault.ValidateNestedItemName] !ok
  # path: name
  #   condition: length(value) <= 127
  #   message:   [from keyvault.ValidateNestedItemName: invalid when len(value) > 127]
  #   source:    [from keyvault.ValidateNestedItemName: invalid when len(value) > 127]
  # path: name
  #   source:    [from keyvault.ValidateNestedItemName] !regexp.MustCompile(`^[0-9a-zA-Z-]+$`).MatchString(v.(string))
  # path: storage_account_id
  #   source:    [from commonids.ValidateStorageAccountID] !ok
  # path: storage_account_id
  #   source:    [from commonids.ValidateStorageAccountID] err != nil
  # path: regeneration_period
  #   source:    [from validate.ISO8601Duration] !ok
  # path: regeneration_period
  #   source:    [from validate.ISO8601Duration] err != nil
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

