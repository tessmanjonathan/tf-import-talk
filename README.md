# Importing Resources to Terraform

Install Terraform - `brew install terraform`

## Scenario
We have an existing AWS S3 bucket, that we need to enable versioning on.
No one knows how the bucket was created in the console. (Tip- cloudtrail could potentially tell you)

## TF Commands for importing in the demo

`terraform init`

`terraform import aws_s3_bucket.demo_bucket devopsdsm-import-demo1`

`terraform plan`
