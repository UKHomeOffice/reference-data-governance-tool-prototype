# Reference Data Governance Tool Prototype

This project is the prototype for the Reference Data Governance Tool. 

- Current prototype version: Version 3
- Last updated: 25th March 2019.

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
