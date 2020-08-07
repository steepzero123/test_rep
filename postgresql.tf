resource "yandex_mdb_postgresql_cluster" "psql-cluster-01" {
    name = "psql-cluster-01"
    environment = "PRESTABLE"
    network_id = yandex_vpc_network.network-01.id

    config {
        version = "11"
        resources {
            resource_preset_id = "b1.nano"
            disk_type_id = "network-hdd"
            disk_size = 15
        }
    }
    database {
        name = "db-01"
        owner = "user-01"
    }
    user {
        name = "user-01"
        password = "password-01"
        permission {
            database_name = "db-01"
        }
    }
    host {
        zone = yandex_vpc_subnet.subnet-01.zone
        subnet_id = yandex_vpc_subnet.subnet-01.id
    }

}