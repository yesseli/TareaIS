variable "my_access_key" {
  description = "Access-key-for-AWS"
  default = "no_access_key_value_found"
}
 
variable "my_secret_key" {
  description = "Secret-key-for-AWS"
  default = "no_secret_key_value_found"
}

provider "aws" {
  region = local.aws.region
  access_key = var.my_access_key
	secret_key = var.my_secret_key  
}