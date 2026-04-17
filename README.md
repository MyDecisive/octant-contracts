# Octant Contracts

Data model and service contracts for communication between the octant UI and API.

## Localdev setup
Install/setup the buf tool
```shell
brew install bufbuild/buf/buf
```

Update the buf dependencies
```shell
buf dep update
```

Run the code generation
```shell
buf generate
```