variable "subscription_id" {
  type = string
  description = "azure suscription ID"
}


variable "location" {
  type = string
  description = "resource group location"
  default = "Central US"
}

variable "environment" {
  type = string
  description = "environment architecture"
  default = "dev"
}

variable "project" {
  type = string
  description = "project name"
  default = "ecommerce"
}

variable "tags" {
  type = map(string)
  description = "project tags"
  default = {
    createdBy: "Carlos Flores"
    date: "June-2025"
  }
}


