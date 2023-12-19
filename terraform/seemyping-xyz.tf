resource "scaleway_domain_record" "seemyping-xyz" {
  for_each = local.seemyping-xyz
  dns_zone = "seemyping.xyz"
  name     = each.key
  type     = each.value["type"]
  data     = each.value["data"]
  ttl      = try(each.value["ttl"], 3600)
  priority  = try(each.value["priority"], null)

}