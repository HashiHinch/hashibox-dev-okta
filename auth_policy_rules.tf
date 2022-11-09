## Rules - these nest within Auth Policies

resource "okta_app_signon_policy_rule" "rules" {
  for_each  = toset(["High", "Medium", "Low", "Unrestricted"])
  policy_id = okta_app_signon_policy.policies["${each.key}"].id

  name                 = "Trusted - High"
  factor_mode          = "1FA"
  device_is_managed    = true
  device_is_registered = true
  network_connection   = "ZONE"
  network_includes = [
    okta_network_zone.Homelab.id
  ]
  constraints = [
    jsonencode({
      # "knowledge" : {
      #   "types" : ["password"]
      "possession" : {
        "deviceBound" : "REQUIRED"
      },
    })
  ]
}

resource "okta_app_signon_policy_rule" "Low" {

  policy_id = okta_app_signon_policy.policies["Low"].id

  name        = "Trusted - Low"
  factor_mode = "1FA"
  constraints = [
    jsonencode({
      "knowledge" : {
        "types" : ["password"]
      },
    })
  ]
}

resource "okta_app_signon_policy_rule" "Medium" {

  policy_id = okta_app_signon_policy.policies["Medium"].id


  name        = "Trusted - Medium"
  factor_mode = "1FA"
  constraints = [
    jsonencode({
      "knowledge" : {
        "types" : ["password"]

      },
    })
  ]
}