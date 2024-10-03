# Output the EKS Cluster API endpoint
output "endpoint" {
  value = aws_eks_cluster.eks_monitoring_cluster.endpoint
}

# Output the certificate authority data for the EKS cluster (for configuring kubectl)
output "kubeconfig_certificate_authority_data" {
  value = aws_eks_cluster.eks_monitoring_cluster.certificate_authority[0].data
}
