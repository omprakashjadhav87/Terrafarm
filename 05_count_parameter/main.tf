resource "aws_iam_user" "iam_user" {
    name = "test-user"
    count= 3

}