# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-2"
}

variable "aws_account_id" {
  description = "AWS Account Id"
  type        = string
  default     = "962851465925"
}
