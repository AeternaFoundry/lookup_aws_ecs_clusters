output "ecs_clusters_lookup_cluster_arns" {
  description = "Map of cluster_arns values across all ecs_clusters_lookup, keyed the same as var.ecs_clusters_lookup"
  value       = { for k, v in data.aws_ecs_clusters.ecs_clusters_lookup : k => v.cluster_arns if v.cluster_arns != null && length(v.cluster_arns) > 0 }
}
output "ecs_clusters_lookup_region" {
  description = "Map of region values across all ecs_clusters_lookup, keyed the same as var.ecs_clusters_lookup"
  value       = { for k, v in data.aws_ecs_clusters.ecs_clusters_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}

