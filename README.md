## Baldr

This is a sample setup using Terragrunt and Minio for remote state.

### Remote State

For terragrunt to work with minio we need to set these values in the remote state config:

```
endpoint                           = "endpoint_url" # Setting this on the aws config file didn't get picked up
skip_bucket_ssencryption           = true
skip_bucket_public_access_blocking = true
skip_bucket_enforced_tls           = true
skip_bucket_root_access            = true
skip_credentials_validation        = true
force_path_style                   = true
```

### Run

The rest is more or less as the usual terragrunt setup.

Run the following from the root of the repo:
```
terragrunt run-all plan
```

and apply with
```
terragrunt run-all apply
```
