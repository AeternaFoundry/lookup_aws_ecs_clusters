data "aws_ecs_clusters" "ecs_clusters_lookup" {
  for_each = var.ecs_clusters_lookup

  region = each.value.region
}

