resource "yandex_resourcemanager_folder_iam_binding" "editor" {
    folder_id = "b1gaa4tho367alcgtur9"
    role      = "editor"
    members   = [
        "serviceAccount:${yandex_iam_service_account.sa-01.id}",
  ]
}