data "aws_iam_group" "admins" {
  group_name = "Administrators"
}

data "aws_eks_cluster_auth" "cluster" {
  name = local.cluster_name

  depends_on = [module.eks.aws_eks_cluster]
}

data "aws_eks_cluster" "cluster" {
  name = local.cluster_name

  depends_on = [module.eks.aws_eks_cluster]
}
