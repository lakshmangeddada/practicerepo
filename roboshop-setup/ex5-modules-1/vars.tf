variable "instances" {
  default = {
    cart = {
      name = "cart"
      type = "t3.micro"
    }
    user = {
      name = "user"
      type = "t3.small"
    }
  }
}