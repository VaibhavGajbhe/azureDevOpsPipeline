rg-details = {
  rg1 = {
    name     = "rg-vg-geminibox"
    location = "westus"

  }
  rg2 = {
    name     = "rg-mg-geminibox"
    location = "westus"
  }
}

vnet-details = {
  vnet1 = {
    name                = "gemini-vg-vnet"
    location            = "westus"
    resource_group_name = "rg-vg-geminibox"
    address_space       = ["10.0.0.0/16"]
    #   dns_servers = ["10.0.0.4", "10.0.0.5"]

    subnets = {
      sub1 = {
        name             = "subnet1"
        address_prefixes = ["10.0.5.0/24"]
      }
      sub2 = {
        name             = "subnet2"
        address_prefixes = ["10.0.2.0/24"]
      }
    }
  }


  # vnet2 = {
  #   name                = "gemini-mg-vnet"
  #   location            = "westus"
  #   resource_group_name = "rg-vg-geminibox"
  #   address_space       = ["10.0.0.0/16"]
  #   #   dns_servers = ["10.0.0.4", "10.0.0.5"]

  #   subnets = {
  #     sub1 = {
  #       name             = "subnet1"
  #       address_prefixes = ["10.0.2.0/24"]
  #     }
  #     sub2 = {
  #       name             = "subnet2"
  #       address_prefixes = ["10.0.4.0/24"]
  #     }
  #   }
  # }
}

nsg-details = {
  nsg1 = {
    name                = "acceptanceTestSecurityGroup1"
    location            = "westus"
    resource_group_name = "rg-vg-geminibox"

    nsg-rule = {
      rule1 = {
        name              = "rule1"
        priority          = 100
        direction         = "Inbound"
        access            = "Allow"
        protocol          = "Tcp"
        source_port_range = "22"
        # destination_port_range     = "*"
        # source_address_prefix      = "*"
        # destination_address_prefix = "*"
      }
      # rule2 = {
      #   name              = "rule2"
      #   priority          = 100
      #   direction         = "Inbound"
      #   access            = "Allow"
      #   protocol          = "Tcp"
      #   source_port_range = "80"
      # destination_port_range     = "*"
      # source_address_prefix      = "*"
      # destination_address_prefix = "*"
      # }


    }

  }
}


stg-details = {
  stg1 = {
    name                     = "geminiboxvg"
    resource_group_name      = "rg-vg-geminibox"
    location                 = "westus"
    account_tier             = "Standard"
    account_replication_type = "GRS"
  }
  stg2 = {
    name                     = "geminiboxmg"
    resource_group_name      = "rg-vg-geminibox"
    location                 = "westus"
    account_tier             = "Standard"
    account_replication_type = "GRS"
  }
}

vm-details = {
  vm1 = {
    subnet_name          = "subnet2"
    virtual_network_name = "gemini-vg-vnet"
    nic_name             = "dhondhuvm-nic"
    name                 = "geminiboxVM201"
    resource_group_name  = "rg-vg-geminibox"
    location             = "westus"
    size                 = "Standard_F2"
    # admin_username       = "adminuser"
    # admin_password       = "test@11223344"

  }

}


# bashion-details = {
#   bas1 = {
#     # location            = "westus"
#     resource_group_name  = "rg-vg-geminibox"
#     virtual_network_name = "gemini-vg-vnet"
#     address_prefixes     = ["10.0.7.0/24"]
#   }
# }

keyvault-details = {
  keyvault1 = {
    name                = "myvmcredentials"
    location            = "westus"
    resource_group_name = "rg-vg-geminibox"

  }
}

# loadbalancer-details={
#   loadbalancer_id                = ""
#   name                           = ""
#   protocol                       = "Tcp"
#   frontend_port                  = 80
#   backend_port                   = 80
#   frontend_ip_configuration_name = ""
#   backend_address_pool_ids       = 
#   probe_id                       = 
# }
