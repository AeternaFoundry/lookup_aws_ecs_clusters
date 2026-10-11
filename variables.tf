variable "ecs_clusters_lookup" {
  description = <<EOT
Map of ecs_clusters_lookup, attributes below
Optional:
    - region
EOT

  type = map(object({
    region = optional(string)
  }))
}

