provider "aws" {
  region = var.region
  default_tags {
    tags = {
      owner          = "eanselmi@edrans.com"
      Name           = "Test For CNB"
      environment    = "tst"
      costCenter     = "SYSENG"
      tagVersion     = 1
      role           = "tst"
      project        = "CNB"
      expirationDate = "12/12/2022"
    }
  }
}
