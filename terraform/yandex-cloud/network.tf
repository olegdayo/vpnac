resource "yandex_vpc_network" "vpn_network" {
    name = "vpn-network"
}

resource "yandex_vpc_subnet" "k8s_subnet_a" {
    name = "vpn-subnet-a"
    v4_cidr_blocks = ["10.128.0.0/24"]
    zone           = "ru-central1-a"
    network_id     = yandex_vpc_network.vpn_network.id
}
