module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source = "./modules/eks-cluster"
  cluster_name = "fast-cluster"
  cluster_version = "1.24"
  vpc_id = "vpc-05e040ae59072b059"

  private_subnets = ["subnet-0260436359d11d3e7", "subnet-0cb1f7a411b3f4a36"]
  public_subnets  = ["subnet-0d4f056dd10104d02", "subnet-009f6cff5a8e3860d"]
}