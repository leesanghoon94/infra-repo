module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source = "./modules/eks-cluster"
  cluster_name = "fast-cluster"
  cluster_version = "1.24"
  vpc_id = "vpc-0bd752928d316c1e4"

  private_subnets = ["subnet-01a42e7f722962415", "subnet-01413f7b23e106249"]
  public_subnets  = ["subnet-02683abfcb7729c5e", "	subnet-0179f8377d58b96d7"]
}