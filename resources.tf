    resource "azurerm_resource_group" "rg"{
        name = var.rg_details.rg_name
        location = var.rg_details.rg_location
    }
/*
    resource "azurerm_virtual_network" "vnet"{
    name                = var.rg_details.vnet_name
    location            = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name
    address_space       = var.rg_details.address_space
    }

    resource "azurerm_subnet" "subnet" {
        name = var.rg_details.subnet_name
        address_prefixes = var.rg_details.address_prefixes
        resource_group_name = azurerm_resource_group.rg.name
        virtual_network_name = azurerm_virtual_network.vnet.name
    }

    resource "azurerm_network_security_group" "nsg" {
    name                = "A-acceptanceTestSecurityGroup1"
    location            = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name

    security_rule {
        name                       = "A-test123"
        priority                   = 100
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "22"
        destination_port_range     = "*"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
    }

    tags = {
        environment = "Production"
    }
    }


    resource "azurerm_public_ip" "pip" {
    name                = "A-TestPublicIp1"
    resource_group_name = azurerm_resource_group.rg.name
    location            = azurerm_resource_group.rg.location
    allocation_method   = "Static"

    tags = {
        environment = "Production"
    }
    }

    resource "azurerm_network_interface" "nic" {
    name                = "A-example-nic"
    location            = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name

    ip_configuration {
        name                          = "internal"
        subnet_id                     = azurerm_subnet.subnet.id
        private_ip_address_allocation = "Dynamic"
        public_ip_address_id = azurerm_public_ip.pip.id
    }
    }


    resource "azurerm_network_interface_security_group_association" "example" {
    network_interface_id      = azurerm_network_interface.nic.id
    network_security_group_id = azurerm_network_security_group.nsg.id
    }

    resource "azurerm_ssh_public_key" "sshk" {
    name                = "A-sshk"
    location            = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name
    public_key          = var.ssh_public_key
    }

    resource "azurerm_linux_virtual_machine" "vmtf" {
    name                = "A-vm-tf"
    resource_group_name = azurerm_resource_group.rg.name
    location            = azurerm_resource_group.rg.location
    size                = "Standard_B2ats_v2"
    admin_username      = "adminuser"
    network_interface_ids = [
        azurerm_network_interface.nic.id,
    ]

    admin_ssh_key {
        username   = "adminuser"
        public_key = azurerm_ssh_public_key.sshk.public_key
    }

    os_disk {
        caching              = "ReadWrite"
        storage_account_type = "Standard_LRS"
    }

    source_image_reference {
        publisher = "Canonical"
        offer     = "0001-com-ubuntu-server-jammy"
        sku       = "22_04-lts"
        version   = "latest"
    }
    }
*/
