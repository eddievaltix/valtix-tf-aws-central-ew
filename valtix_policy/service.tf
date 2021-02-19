// Define Valtix Service resources
resource "valtix_service_object" forward-https {
  name           = "Forward-HTTPS"
  service_type   = "Forwarding"
  port {
    destination_ports = "443"
  }
}
