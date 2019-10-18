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

resource "null_resource" "env1" {
  provisioner "local-exec" {
    command = "echo $ATLAS_CONFIGURATION_VERSION_GITHUB_COMMIT_SHA"
  }
}
