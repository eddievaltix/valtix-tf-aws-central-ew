// Define Valtix Service resources
resource "valtix_service_object" "forward-all" {
  name         = "Forward-all"
  service_type = "Forwarding"
  port {
    destination_ports = "1-65535"
  }
}
