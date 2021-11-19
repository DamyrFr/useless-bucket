variable "region" {
  type        = string
  default     = "eu-west-2"
  description = "AWS region"
}

variable "bucketname" {
  type        = string
  default     = "uselessbucketmachine"
  description = "Name of the bucket"
}

variable "lambdaruntime" {
  type        = string
  default     = "python3.8"
  description = "Runtime for Lambda"
}

variable "lambdaname" {
  type        = string
  default     = "uselesslambda"
  description = "Name of the Lambda"
}
