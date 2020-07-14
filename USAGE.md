# Usage
<!--- BEGIN_TF_DOCS --->
## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.7 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| availability\_zone | The AZ to start the instance in | `string` | `"us-east-1a"` | no |
| creator | Email address of person creating this resource | `string` | `"jdoe@example.com"` | no |
| environment | Name of the environment instance is being created in | `string` | `"QA"` | no |
| instance\_type | The type of instance to start. Updates to this field will trigger a stop/start of the EC2 instance | `string` | `"t2.micro"` | no |

## Outputs

| Name | Description |
|------|-------------|
| instance\_arn | n/a |
| instance\_availability\_zone | n/a |
| instance\_id | n/a |
| instance\_private\_dns | n/a |
| instance\_private\_ip | n/a |
| instance\_security\_groups | n/a |
<!--- END_TF_DOCS --->
