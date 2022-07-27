resource "aws_iam_user" "user" {
    for_each = toset(var.username)
    name = each.value
}
output "username" {
    value = [ for name in var.username : upper(name) ]
}