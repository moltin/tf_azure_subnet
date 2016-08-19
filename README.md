# Subnet Terraform module

A Terraform module to provide a Subnet on Microsoft Azure.


# Setup

- `name` - The name of the virtual network.
- `resource_group_name` - The name of the resource group in which to create the virtual network.
- `virtual_network_name` - The name of the virtual network to which to attach the subnet.
- `network_security_group_id` - The ID of the Network Security Group to associate with the subnet.
- `address_prefix` - The address prefix to use for the subnet.

# Run

```js
module "subnet" {
    source = "github.com/moltin/tf_azure_subnet"

    name = "${var.app_name}_${var.subnet_name}"
    resource_group_name = "${module.resource_group.name}"
    virtual_network_name = "${module.virtual_network.name}"
    network_security_group_id = "${module.network_security_group.id}"
    address_prefix = "${var.address_prefix}"
}
```

## Outputs

 - `id` - The subnet ID.
 - `ip_configurations` - The collection of IP Configurations with IPs within this subnet.

# Resources

- [Terraform Microsoft Azure Resource Manager - Subnet](https://www.terraform.io/docs/providers/azurerm/r/subnet.html)
