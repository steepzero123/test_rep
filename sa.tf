resource "yandex_iam_service_account" "sa-01" {
    name = "sa-01"
    description = "SA for manage kubecluster"
}