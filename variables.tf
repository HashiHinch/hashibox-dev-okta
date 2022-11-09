variable "org_name" {
  # This is the prefix of your url so for example frontdoor.oktapreview.com 
  default = ""
}

variable "base_url" {

  # Depending on your Okta tenant, it will be one of the two domains below
  # default = "okta.com"
  default = ""
}

variable "api_token" {
  default = ""
}