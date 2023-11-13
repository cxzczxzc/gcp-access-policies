# IAM Access Policies in Google Cloud

Access policies are a feature of Access Context Manager on Google Cloud. At a high level, access context manager provides the ability to define fine-grained, attribute based access controls for projects and resources in Google Cloud. For more information, check out the [documentation](https://cloud.google.com/access-context-manager/docs/overview)

Each access policy has corresponding access levels. The access levels determine which factors are considered when evaluating access, such as device type, OS, IP address, and user identity. Access policies are one of the core parts of BCE solution components such as VPC-SC, IAP, etc. 

## Demo Objective
This repo contains the code for demonstrating how two GCP access policies would work simultaneously, without impacting each other.

The first access policy is deployed at the organization node. The second one is a scoped access policy deployed at the folder level, within the same GCP organization. 


## Deployment Steps

Follow the steps below to deploy the two access policies 

### Deploy and configure an Access Policy at the Organization Level

### Deploy and configure a Scoped Access Policy at the Folder Level

## Validation 

Follow the steps below to ensure that the two access policies can work simultaneously, without impacting each other. 

