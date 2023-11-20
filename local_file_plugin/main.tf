resource "local_sensitive_file" "cricket" {
  filename     = "./cricket.txt"
  content  = var.content
  file_permission = "0755"
}

resource "local_file" "games" {
  filename     = var.filename
  content  = "FIFA 21"
}
