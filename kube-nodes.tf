resource "yandex_kubernetes_node_group" "node-group-01" {
    name = "node-group-01"
    cluster_id = yandex_kubernetes_cluster.cluster-01.id
    scale_policy {
        auto_scale {
          min = 2
          max = 4
          initial = 2
        }
    }
    instance_template {
        resources {
            core_fraction = 5
            cores = 2
            memory = 2
        }
    }
}