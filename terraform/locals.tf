locals {
  tags = {
    mantainer   = var.mantainer
    environment = var.stage  
    terraform   = 1
  }
}
