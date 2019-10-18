resource "random_pet" "server" {
  keepers = {}
}

output "pet_name" {
  value = "${random_pet.server.id}"
}

resource "null_resource" "env" {
  provisioner "local-exec" {
    command = "env"
  }
}
