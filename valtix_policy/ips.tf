resource "valtix_profile_network_intrusion" "ips_auto" {
  name        = "IPS-Balanced-Auto"
  description = "IPS Balanced Policy with auto Talos rule updates"
  policy      = "BALANCED"
}