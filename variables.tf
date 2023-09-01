
variable "cluster_name" {
  description = "Name of the EKS cluster where the ingress nginx will be deployed"
  type        = string

}
variable "AWS_SECRET_KEY" {
    default = "" 
}

variable "AWS_ACCESS_KEY" {
    default = "" 
}

variable "AWS_SESSION_TOKEN" {
    default = "" 
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}