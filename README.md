# IAM Access Policies in Google Cloud

Access policies are a feature of Access Context Manager on Google Cloud. At a high level, access context manager provides the ability to define fine-grained, attribute based access controls for projects and resources in Google Cloud. For more information, check out the [documentation](https://cloud.google.com/access-context-manager/docs/overview)

Each access policy has corresponding access levels. The access levels determine which factors are considered when evaluating access, such as device type, OS, IP address, and user identity. Access policies are one of the core parts of BCE solution components such as VPC-SC, IAP, etc. 

## Pre-requisites
- GCP Organization with at least 1 folder and 2 projects 
- Terraform version >= 1.0.0, < 2.0.0
- gcloud 

## Demo Objective
This repo contains the code for demonstrating how two GCP access policies would work simultaneously. This is the order of execution of this demo:

## Deployment Steps


### Deploy and configure an Access Policy at the **Organization Level**
1. Go to the `org_infra` folder and update the `terraform.tfvars`
```bash
cd org_infra
```
2. Create the access policy
```bash
terraform init
terraform plan
terraform apply --auto-approve
```

### Deploy and configure a **Scoped Access Policy at the Folder Level**
1. Go to the `folder_infra` folder and update the `terraform.tfvars`
```bash
cd folder_infra
```
2. Create the access policy
```bash
terraform init
terraform plan
terraform apply --auto-approve
```

## Validation Steps

1. Check the configuration of both the access policies, and their respective access levels and VPC-SC perimeters' configuration.
2. Add project contained in the VPC-SC perimeter using the scoped access policy to the  VPC-SC perimeter using the org level access policy. 
    - This should cause a 400 error because the project is already within the VPC-SC perimeter using the scoped access policy. 
3. Delete the scoped access policy, access levels, and the VPC-SC perimeter using the scoped access policy.
4. Verify that the org level access policy and its components are unaffected.

