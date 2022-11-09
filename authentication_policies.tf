## Auth Policies

resource "okta_app_signon_policy" "policies" {
  for_each    = toset(["High", "Medium", "Low", "Unrestricted"])
  name        = "Assurance Level - ${each.key}"
  description = "This policy contains ${each.key} rules"
}

