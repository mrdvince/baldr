locals {
  environment_vars   = read_terragrunt_config(find_in_parent_folders("env.hcl"))
  base_source_url    = "git@github.com:mrdvince/terraform-proxmox-qemu.git"
  base_source_branch = "main"
}