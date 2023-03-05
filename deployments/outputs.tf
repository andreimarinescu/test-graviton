output "dev_lb_ip" {
  value = module.backend_dev.lb_ip
  description = "FQDN of dev backend load balancer"
}
