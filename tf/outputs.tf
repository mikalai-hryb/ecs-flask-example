output "alb_url" {
  description = "Application Load Balancer URL"
  value       = aws_lb.main.dns_name
}