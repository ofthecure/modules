variable "resource_group" {
    description = "Azure resource group that the key vault belongs to"
    type = object({
        name = string
        location = string
    })
}

variable "team" {
    description = "Team that owns the key vault"
    type = string
}

variable "environment" {
    description = "Environment that the key vault belongs to"
    type = string
}
