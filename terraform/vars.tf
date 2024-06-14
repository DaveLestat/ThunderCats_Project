variable "default_tags" {
  type = map(string)
  default = {
    "env" = "thundercats"
  }
  description = "Description for thundercats variable"
}