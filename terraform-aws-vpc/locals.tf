locals {
  subnet_tags = {
    public   = lookup(var.subnet_tags, "public", null)
    private  = lookup(var.subnet_tags, "private", null)
    database = lookup(var.subnet_tags, "database", null)
  }

  default_tags = {
    env        = var.env
    team       = var.team
    purpose    = var.purpose
    managed_by = "terraform"
  }
}
