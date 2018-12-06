resource "random_pet" "server" {
  keepers = {}
}

output "id" {
  value = "${random_pet.server.id}"
}
