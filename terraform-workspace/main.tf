# Author Michael Zarate
# tips for usage:
# use ALT + SHIFT + A to comment block out the unwanted resource
# run terraform init at least one in a clean workspace
# run terraform plan to view changes
# run terraform apply to apply those changes
# run terraform destory to deprovision what you have

provider "google" {
    project = "zarate-linux-admin-fund"
    region = "us-central1"
    zone = "us-central1-a"
}

# a SUSE Enterprise Linux  Server Distro 

resource "google_compute_instance" "sles_instance_01" {
    name = "sles15-micro"
    machine_type = "f1-micro"

    tags = ["http-server", "https-server"]

    labels = {
        purpose = "learning"
    }

    boot_disk {
        initialize_params {
            image = "suse-cloud/sles-15"
        }
    }

    network_interface {
        network = "default"

        access_config {

        }
    }
}

# a ubuntu distro to use

/* resource "google_compute_instance" "ubuntu18_instance_01" {
    name = "ubuntu18-micro"
    machine_type = "f1-micro"

    tags = ["http-server", "https-server"]

    labels = {
        purpose = "learning"
    }

    boot_disk {
        initialize_params {
            image = "ubuntu-os-cloud/ubuntu-1804-lts"
        }
    }

    network_interface {
        network = "default"

        access_config {

        }
    }
} */

/* resource "google_compute_instance" "rhel8_instance_01" {
    name = "rhel8-micro"
    machine_type = "f1-micro"

    tags = ["http-server", "https-server"]

    labels = {
        purpose = "learning"
    }

    boot_disk {
        initialize_params {
            image = "rhel-cloud/rhel-8"
        }
    }

    network_interface {
        network = "default"

        access_config {

        }
    }
}*/



