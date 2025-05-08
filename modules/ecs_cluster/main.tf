resource "aws_ecs_cluster" "this" {
  name = "${var.name_prefix}-cluster"

  tags = {
    Name = "${var.name_prefix}-cluster"
  }
}
