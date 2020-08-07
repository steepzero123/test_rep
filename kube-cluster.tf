resource "yandex_kubernetes_cluster" "cluster-01" {
    name = "cluster-01"
    network_id = yandex_vpc_network.network-01.id
    service_account_id = yandex_iam_service_account.sa-01.id
    node_service_account_id = yandex_iam_service_account.sa-01.id
    master {
        public_ip = true
        zonal {
          zone = yandex_vpc_subnet.subnet-01.zone
          subnet_id = yandex_vpc_subnet.subnet-01.id
        }
    }
}