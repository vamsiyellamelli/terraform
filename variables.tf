variable "credentials_file" {
  description = "Path to the GCP service account key JSON"
  type        = string
}

variable "region" {
  description = "GCP region"
  default     = "us-central1"
}

variable "zone" {
  description = "GCP zone"
  default     = "us-central1-a"
}
