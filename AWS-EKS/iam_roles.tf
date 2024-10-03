# IAM Policy Document for EKS Assume Role
data "aws_iam_policy_document" "assume_role" {
  statement {
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["eks.amazonaws.com"]
    }

    actions = ["sts:AssumeRole"]
  }
}

# IAM Role for EKS Cluster
resource "aws_iam_role" "eks_monitoring_role" {
  name               = var.cluster_name
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
}

# Attach AmazonEKSClusterPolicy to the IAM role for the cluster
resource "aws_iam_role_policy_attachment" "eks_monitoring_AmazonEKSClusterPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = aws_iam_role.eks_monitoring_role.name
}

# Attach AmazonEKSVPCResourceController for managing VPC resources
resource "aws_iam_role_policy_attachment" "eks_monitoring_AmazonEKSVPCResourceController" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController"
  role       = aws_iam_role.eks_monitoring_role.name
}
