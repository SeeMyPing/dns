resource "scaleway_domain_record" "kezal-fr" {
  for_each = local.kezal-fr
  dns_zone = "kezal.fr"
  name     = each.key
  type     = each.value["type"]
  data     = each.value["data"]
  ttl      = try(each.value["ttl"], 3600)
  priority = try(each.value["priority"], null)

}