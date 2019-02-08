resource "aws_elb" "service_elb" {
  name = "${var.appname}-${var.environ}"
  subnets = ["${split(",", module.vpc.public_subnets)}"]
  connection_draining = true
  cross_zone_load_balancing = true
  security_groups = [
    "${aws_security_group.allow_cluster.id}",
    "${aws_security_group.allow_all_inbound.id}",
    "${aws_security_group.allow_all_outbound.id}"
  ]

  listener {
    instance_port = "${var.host_port}"
    instance_protocol = "http"
    lb_port = "${var.lb_port}"
    lb_protocol = "http"
  }

  health_check {
    healthy_threshold = 2
    unhealthy_threshold = 10
    target = "HTTP:${var.host_port}/"
    interval = 5
    timeout = 4
  }
}
