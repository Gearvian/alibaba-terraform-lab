resource "alicloud_ecs_key_pair" "HWKey" {
  key_pair_name = "lapkey"
  key_file      = "lapkey.pem"
}