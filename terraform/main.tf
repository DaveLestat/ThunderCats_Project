provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "logs-bucket" {
  bucket = "thundercats-cloudfront-logs"
  tags = {
    Name = "CloudFrontAccessLogs"
  }
}

resource "aws_dynamodb_table" "thndr_contact_us_table" {
  name             = "thndr-contactUs"
  billing_mode     = "PROVISIONED"
  read_capacity    = 1
  write_capacity   = 1
  hash_key         = "email"

  attribute {
    name = "email"
    type = "S"
  }
}

resource "aws_iam_role" "lambda_execution_role" {
  name = "lambda_execution_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action    = "sts:AssumeRole"
        Effect    = "Allow"
        Principal = {
          Service = "lambda.amazonaws.com"
        }
      },
    ]
  })

  inline_policy {
    name   = "LambdaDynamoDBPolicy"
    policy = jsonencode({
      Version = "2012-10-17"
      Statement = [
        {
          Action   = [
            "dynamodb:PutItem",
            "dynamodb:GetItem",
            "dynamodb:UpdateItem",
            "dynamodb:DeleteItem",
            "dynamodb:Query",
            "dynamodb:Scan"
          ]
          Effect   = "Allow"
          Resource = aws_dynamodb_table.thndr_contact_us_table.arn
        },
        {
          Action   = [
            "logs:CreateLogGroup",
            "logs:CreateLogStream",
            "logs:PutLogEvents"
          ]
          Effect   = "Allow"
          Resource = "*"
        },
      ]
    })
  }
}

resource "aws_api_gateway_rest_api" "thndr_api_gateway" {
  name        = "thndr-api-gtw"
  description = "REST API for thndr"
}