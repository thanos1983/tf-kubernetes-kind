variable "host" {
  description = "The hostname (in form of URI) of Kubernetes master."
  type        = string
  default     = "https://127.0.0.1:37249"
}

variable "client_certificate" {
  description = "PEM-encoded client certificate for TLS authentication."
  type        = string
}

variable "client_key" {
  description = "PEM-encoded client certificate key for TLS authentication."
  type        = string
}

variable "cluster_ca_certificate" {
  description = "PEM-encoded root certificates bundle for TLS authentication."
  type        = string
}