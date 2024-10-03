# Create the EKS Cluster
resource "aws_eks_cluster" "eks_monitoring_cluster" {
  name     = var.cluster_name
  role_arn = aws_iam_role.eks_monitoring_role.arn

  vpc_config {
    subnet_ids = [aws_subnet.eks_monitoring_subnet1.id, aws_subnet.eks_monitoring_subnet2.id]
  }

  depends_on = [
    aws_iam_role_policy_attachment.eks_monitoring_AmazonEKSClusterPolicy,
    aws_iam_role_policy_attachment.eks_monitoring_AmazonEKSVPCResourceController,
  ]
}
