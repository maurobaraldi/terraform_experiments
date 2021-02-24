variable "workspace" {
  type    = string
  default = "dev"
}

variable "env_vars" {
  type = map
  default = {
    "dev" = {
      "domain" = "maurobaraldi.com.br"
      "branch" = "master",
    }
  }
}
