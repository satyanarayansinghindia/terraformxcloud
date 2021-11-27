provider "google" {
project = "skillful-air-333110"
region = "us-central1"
}

variable "machine" {
type = string
default = "f1-micro"
}

resource "google_compute_instance" "myvm01" {
name = "myfirstvm"
machine_type = var.machine
zone = "us-central1-a"
network_interface {
network = "default"
}
boot_disk {
initialize_params {
image = "debian-cloud/debian-10"
}
}
}

resource "google_compute_instance" "myvm02" {
name = "mysecondvm"
machine_type = var. machine
zone = "us-central1-a"
network_interface {
network = "default"
}
boot_disk {
initialize_params {
image = "rhel-cloud/rhel-7"
}
}
}
