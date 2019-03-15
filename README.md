# Reference Data Governance Tool Prototype

This project is the prototype for the Reference Data Governance Tool.

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


## Pushing to Quay and deploying to kubernetes

First build and push the image to Quay.io:

```
docker build -t ref-data-gov-tool-prototype .
docker login -u="<quay username>" -p="<encrypted quay password>" quay.io
docker commit <container id> quay.io/ukhomeofficedigital/ref-data-gov-tool-prototype
docker push quay.io/ukhomeofficedigital/ref-data-gov-tool-prototype
```

Now deploy it using `kd`:

```
export HOSTNAME=<host.domain.com>
export KUBE_NAMESPACE=<namespace>
kd -f kube/ingress.yml  -f kube/service.yml  -f kube/network-policy.yml  -f kube/deployment.yml
```
