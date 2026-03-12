resource "aws_eks_cluster" "eks" {

  name     = var.cluster_name
  role_arn = aws_iam_role.eks_cluster_role.arn
  version  = var.kubernetes_version

  vpc_config {

    subnet_ids         = var.private_subnets
    security_group_ids = [aws_security_group.eks_cluster_sg.id]

  }

}
