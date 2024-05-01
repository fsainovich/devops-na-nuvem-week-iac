resource "aws_iam_policy" "alb_policy" {

    name = "${var.eks_cluster.name}-AWSLoadBalancerControllerIAMPolicy"
    policy = file(alb_policy.json)

}