resource "aws_eks_node_group" "nodes" {

  cluster_name    = aws_eks_cluster.eks.name
  node_group_name = "worker-nodes"
  node_role_arn   = aws_iam_role.node_role.arn
  subnet_ids      = var.private_subnets

  scaling_config {

    desired_size = var.desired_size
    max_size     = var.max_size
    min_size     = var.min_size

  }

  instance_types = [var.instance_type]

}
