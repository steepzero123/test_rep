resource "yandex_vpc_network" "network-01" {
    name = "network-01"
}

resource "yandex_vpc_subnet" "subnet-01" {
    name = "subnet-01"
    network_id = yandex_vpc_network.network-01.id
    v4_cidr_blocks = ["${var.subnet_v4_cidr}"]
}