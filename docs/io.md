## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| enabled | Whether to create the resources. Set to `false` to prevent the module from creating any resources. | `bool` | `true` | no |
| ip\_address | The IP address of the domain. If specified, this IP is used to created an initial A record for the domain. | `string` | `null` | no |
| name | The name of the domain. | `string` | `""` | no |
| records | Provides a DigitalOcean DNS record resource. | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | The name of the domain. |
| ttl | The TTL value of the domain. |
| urn | The uniform resource name of the domain. |

