# Reference Data Governance Tool Prototype

This project is the prototype for the Reference Data Governance Tool. 

- Current prototype version: Version 3
- Last updated: 28th March 2019.

>The prototype has been built using the [GOV UK Prototype Kit](https://govuk-prototype-kit.herokuapp.com/docs) V8.8.0

## Running the prototype locally

To install the prototype:

```
npm install
```

To start the prototype:

```
npm start
```

## Building and running the prototype in Docker

> The prototype kit requires that there be a `.env` file, however this prototype does not require any environment variables so the file can be empty.

To build the prototype's Docker container:

```
docker build -t ref-data-gov-tool-prototype .
```

To run the resulting Docker container:

```
docker run -p 3000:3000 -m 500M --memory-reservation 200M ref-data-gov-tool-prototype
```

> The prototype uses about 170MB of memory and will crash if there is insufficient memory available.


## Automated builds and deployment

This project will automatically build and deploy each change (`push` or `deployment`) to the `master` branch to the `dev` environment.

### Drone secrets

Name|Example
---|---
dev_drone_aws_access_key_id|https://console.aws.amazon.com/iam/home?region=eu-west-2#/users/bf-it-devtest-drone?section=security_credentials
dev_drone_aws_secret_access_key|https://console.aws.amazon.com/iam/home?region=eu-west-2#/users/bf-it-devtest-drone?section=security_credentials
drone_public_token|Drone token (Global for all github repositories and environments)
env_kube_namespace_refdata|refdata-dev, cop-refdata-staging, cop-refdata
env_kube_server|https://kube-api-notprod.notprod.acp.homeoffice.gov.uk, https://kube-api-prod.prod.acp.homeoffice.gov.uk
env_kube_token|xxx
env_refdata_prototype_url|prototype.dev.refdata.homeoffice.gov.uk, prototype.refdata.homeoffice.gov.uk
production_drone_aws_access_key_id|https://console.aws.amazon.com/iam/home?region=eu-west-2#/users/bf-it-prod-drone?section=security_credentials
production_drone_aws_secret_access_key|https://console.aws.amazon.com/iam/home?region=eu-west-2#/users/bf-it-prod-drone?section=security_credentials
quay_password|xxx (Global for all repositories and environments)
quay_username|docker (Global for all repositories and environments)
slack_webhook|https://hooks.slack.com/services/xxx/yyy/zzz (Global for all repositories and environments)
