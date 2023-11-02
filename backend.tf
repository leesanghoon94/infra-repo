# tfstate를 저장할 backend 설정
terraform {
  backend "s3" {
    bucket  = "my-tfstate-01"
    key     = "terraform.state"
    region  = "ap-northeast-2"
    profile = "tf-sanghoon"
  }
}