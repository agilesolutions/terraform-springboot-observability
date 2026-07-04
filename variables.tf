variable "namespace" {
  type    = string
  default = "monitoring"
}

variable "prometheus_version" {
  type        = string
  description = "The version of the prometheus Helm chart to deploy."
  default = "87.5.1"

  validation {
    condition     = can(regex("^v?[0-9]+\\.[0-9]+\\.[0-9]+(-[a-zA-Z0-9.]+)?$", var.prometheus_version))
    error_message = "The helm_chart_version must be a valid Semantic Version (e.g., '1.2.3' or 'v1.2.3')."
  }
}

variable "tempo_version" {
  type        = string
  description = "The version of the prometheus Helm chart to deploy."
  default = "1.24.4"

  validation {
    condition     = can(regex("^v?[0-9]+\\.[0-9]+\\.[0-9]+(-[a-zA-Z0-9.]+)?$", var.tempo_version))
    error_message = "The helm_chart_version must be a valid Semantic Version (e.g., '1.2.3' or 'v1.2.3')."
  }
}

variable "loki_version" {
  type        = string
  description = "The version of the prometheus Helm chart to deploy."
  default = "7.0.0"

  validation {
    condition     = can(regex("^v?[0-9]+\\.[0-9]+\\.[0-9]+(-[a-zA-Z0-9.]+)?$", var.loki_version))
    error_message = "The helm_chart_version must be a valid Semantic Version (e.g., '1.2.3' or 'v1.2.3')."
  }
}

variable "alloy_version" {
  type        = string
  description = "The version of the prometheus Helm chart to deploy."
  default = "1.10.0"

  validation {
    condition     = can(regex("^v?[0-9]+\\.[0-9]+\\.[0-9]+(-[a-zA-Z0-9.]+)?$", var.alloy_version))
    error_message = "The helm_chart_version must be a valid Semantic Version (e.g., '1.2.3' or 'v1.2.3')."
  }
}

variable "loki_url" {
  type        = string
  description = "The server host address (do not include http:// or https://)."

  validation {
    condition     = can(regex("^[a-zA-Z0-9][a-zA-Z0-9-]{0,61}[a-zA-Z0-9](?:\\.[a-zA-Z]{2,})+$|^localhost$", var.loki_url))
    error_message = "The server_endpoint must be a valid domain name or hostname without a protocol prefix (e.g., '://example.com' or 'localhost')."
  }
}

variable "tempo_endpoint" {
  type        = string
  description = "The endpoint URL for the API service."

  validation {
    condition     = can(regex("^https?://[a-zA-Z0-9.-]+(?:\\.[a-zA-Z]{2,})?(?::[0-9]+)?(?:/.*)?$", var.tempo_endpoint))
    error_message = "The api_url variable must be a valid HTTP or HTTPS URL (e.g., https://example.com or http://localhost:8080)."
  }
}

variable "prometheus_remote_write_url" {
  type        = string
  description = "The endpoint URL for the API service."

  validation {
    condition     = can(regex("^https?://[a-zA-Z0-9.-]+(?:\\.[a-zA-Z]{2,})?(?::[0-9]+)?(?:/.*)?$", var.prometheus_remote_write_url))
    error_message = "The api_url variable must be a valid HTTP or HTTPS URL (e.g., https://example.com or http://localhost:8080)."
  }
}