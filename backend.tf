data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "statefiles3bucket"
    key    = "network/terraform.tfstate"
    region = "us-west-2"
    dynamo_table = "my-dynamo-statefile"
  }
}
