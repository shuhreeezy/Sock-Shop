module "eks" {
  source = "./eks_cluster.tf"
}

module "iam" {
  source = "./iam_roles.tf"
}

module "network" {
  source = "./networking.tf"
}

# Outputs are automatically aggregated