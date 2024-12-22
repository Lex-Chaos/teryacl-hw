###cloud vars


variable "cloud_id" {
  type        = string
  default     = "b1g0togg4o2vkjsh19cb"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  default     = "b1g7fnugh0okc75bvd84"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}

variable "vm_web_cores" {
  type        = number
  default     = 2
  description = "Количество ядер"
}

variable "vm_web_memory" {
  type        = number
  default     = 1
  description = "Объём памяти"
}

variable "vm_web_core_fraction" {
  type        = number
  default     = 20
  description = "Процент использования"
}

variable "vm_web_preemptible" {
  type        = bool
  default     = true
  description = "Прерываемость"
}

variable "vm_web_nat" {
  type        = bool
  default     = true
  description = "nat"
}

variable "vm_web_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "Прерываемость"
}

###ssh vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKtXehh5Upeqat+r3OsC1VIh2Rnma/menCG/w9RxlX4r lex@lex-virtualbox"
  description = "ssh-keygen -t ed25519"
}
