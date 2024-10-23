resource "alicloud_security_group" "nginxSecGroup" {
  name        = "nginx"
  description = "nginx security group"
  vpc_id      = alicloud_vpc.HWvpc.id
}


resource "alicloud_security_group_rule" "httpSecGroup" {
  type              = "ingress"
  ip_protocol       = "tcp"
  policy            = "accept"
  port_range        = "80/80"
  priority          = 1
  security_group_id = alicloud_security_group.nginxSecGroup.id
  cidr_ip           = "0.0.0.0/0"
}
resource "alicloud_security_group_rule" "sshSecGroup" {
  type              = "ingress"
  ip_protocol       = "tcp"
  policy            = "accept"
  port_range        = "22/22"
  priority          = 1
  security_group_id = alicloud_security_group.nginxSecGroup.id
  cidr_ip           = "0.0.0.0/0"
}
