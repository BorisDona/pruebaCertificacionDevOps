terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {
 host = "tcp://localhost:2375" 
}
resource "docker_image" "my_app_image" {
 name = "myapp"
 build {
 context = "."
 }
}
resource "docker_container" "my_app_container" {
 image = docker_image.my_app_image
 name = "myapp"
 ports {
 internal = 8080
 external = 8080
 }
}