variable "credentials_file" {
  description = "Path to the GCP service account key JSON"
  type        = string
}

variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  default     = "us-central1"
  description = "GCP Region"
}

variable "zone" {
  default     = "us-central1-a"
  description = "GCP Zone"
}