backend_resource_group = {
  name                 = "coxhealth-terraform"
  location             = "eastus"
  storage_account_name = "hpctfsteus001"
  key_vault_name       = "hpc-kv-eus-001"
}

environments = {
  di-lens-dev-rg     = "eastus",
  di-lens-test-rg    = "westus"
  di-lens-prod-rg    = "centralus"
  di-lenssyn-dev-rg  = "eastus"
  di-lenssyn-test-rg = "westus"
  di-lenssyn-prod-rg = "centralus"
}

tags = {
  Team        = "analytics",
  Application = "analytics",
  Department  = "it"
}
