resource "random_pet" "server" {
  keepers = {}
}

output "pet_name" {
  value = "${random_pet.server.id}"
}
