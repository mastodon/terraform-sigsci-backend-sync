terraform {
  required_version = ">= 1.0.0"

  required_providers {
    sigsci = {
      source  = "signalsciences/sigsci"
      version = "~> 2.1.6"
    }
  }
}
