# Azure CLI Wrapper Action

An action to run Azure CLI commands from a GitHub Workflow. This action creates a Docker container with PowerShell and the Azure CLI installed, logs in, and then attempts to run the command specified in the `command` input.

## Usage

### Inputs
| Parameter | Description | Required |
| - | - | - |
| username | Azure Service Principal Username | `true` | 
| tenant | Azure Service Principal Tenant | `true` | 
| password | Azure Service Principal Tennant ID | `true` | 
| command | A command to run | `true` |

### Example
```yaml
    - name: Start MyContainerGroup
      uses: Plabick/ACR-Container-Purge-Action@master
      with:
        registry: ${{ secrets.registry }}
        username: ${{ secrets.service-principal-username }}
        tenant: ${{ secrets.service-principal-tenant }}
        password: ${{ secrets.SERVICE_PRINCIPAL_TOKEN }}
        command: 'az container start --name MyContainerGroup --resource-group MyResourceGroup'
```
