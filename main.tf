terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "popa-org"

    workspaces {
      name = "home-www"
    }
  }
}




resource "null_resource" "helloWorld" {
    provisioner "local-exec" {
        command = "echo hello world"
    }
}
