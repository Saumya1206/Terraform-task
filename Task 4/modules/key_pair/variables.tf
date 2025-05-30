variable "key_name" {
  description = "Name for the key pair"
  type        = string
}

variable "public_key" {
  description = "Public key material"
  type        = string
  sensitive   = true
}
variable "tags" {
  description = "Tags to apply to key-pair"
  type        = map(string)
}
