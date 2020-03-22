variable "profile" {
  default = "terraform"
}

variable "region" {
  default = "eu-west-2"
}
variable "amis" {
  type = "map"
  default = {
    eu-west-1 = "ami-0ddf403ca855dacf5" # EU Ireland
    # eu-west-2 = "ami-046dc2dacfa0ae854" # EU London
    # eu-west-2 = "ami-0d6ebdfc4096e7a6a" # EU London private image
    eu-west-2 = "ami-0521c4dc863d418da" # EU London
    us-east-1 = "ami-00d4e9ff62bc40e03" # US N.virginia
  }
}

variable "ami" {
  default = "ami-046dc2dacfa0ae854"
}


variable "instance" {
  default = "t2.large"
}

variable "instance_count" {
  default = "1"
}

variable "public_key" {
  default = "../../../.ssh/devopsmonks.pub"
}

variable "private_key" {
  default = "../../../.ssh/devopsmonks.pem"
}

variable "ansible_user" {
  default = "ubuntu"
}

