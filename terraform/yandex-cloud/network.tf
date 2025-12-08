resource "yandex_vpc_network" "vpn_network" {
    name = "vpn-network"
}

resource "yandex_vpc_subnet" "vpn_subnet_a" {
    name = "vpn-subnet-a"
    v4_cidr_blocks = ["10.128.0.0/24"]
    zone           = "ru-central1-a"
    network_id     = yandex_vpc_network.vpn_network.id
}

# resource "yandex_vpc_security_group" "vpn_traffic" {
#     name       = "vpn-traffic"
#     network_id = yandex_vpc_network.vpn_network.id

#     ingress {
#         description    = "SSH"
#         port           = 1024
#         protocol       = "TCP"
#         v4_cidr_blocks = ["0.0.0.0/0"]
#     }

#     ingress {
#         description    = "ShadowSocks"
#         port           = 2048
#         protocol       = "TCP"
#         v4_cidr_blocks = ["0.0.0.0/0"]
#     }

#     ingress {
#         description    = "VLESS"
#         port           = 4096
#         protocol       = "TCP"
#         v4_cidr_blocks = ["0.0.0.0/0"]
#     }
# }
