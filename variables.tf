variable "rg_details" { 
    type = object({
        rg_name = string
        rg_location = string
        vnet_name = string
        address_space  = list(string)
        subnet_name = string
        address_prefixes = list(string)
    })

    default = {
        rg_name = "A-rg2"
        rg_location = "Canada Central"
        vnet_name = "A-vnet2"
        address_space  = ["10.0.0.0/16"]
        subnet_name = "A-subnet2"
        address_prefixes = ["10.0.1.0/24"]
    }
}