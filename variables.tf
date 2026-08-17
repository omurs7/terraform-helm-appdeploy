variable "name" {
  description = " Please specify a name for your deployment"
  type        = string
  default     = "demo"
}

variable "name" {
  description = " Please specify a name for your namespace"
  type        = string
  default     = "default"
}

variable "repository" {
  description = " Please specify a repository for your deployment"
  type        = string
  default     = null
}

variable "chart" {
  description = " Please specify a chart for your deployment"
  type        = string
}
