variable "namespace" {
  type    = string
  default = "monitoring"
}

variable "prometheus_version" {
  type    = string
  default = "87.5.1"
}

variable "tempo_version" {
  type    = string
  default = "1.24.4"
}

variable "loki_version" {
  type    = string
  default = "7.0.0"
}

variable "alloy_version" {
  type    = string
  default = "1.10.0"
}

variable "loki_url" {
  type = string
}

variable "tempo_endpoint" {
  type = string
}

variable "prometheus_remote_write_url" {
  type = string
}