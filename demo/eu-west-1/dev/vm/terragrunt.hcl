include "root" {
  path = find_in_parent_folders("root.hcl")
}

include "envcommon" {
  path = "${dirname(find_in_parent_folders("root.hcl"))}/_envcommon/vm.hcl"
  expose = true
}


terraform {
  source = "${include.envcommon.locals.base_source_url}?ref=${include.envcommon.locals.base_source_branch}"
}