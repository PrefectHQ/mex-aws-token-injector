#!/bin/bash

# cd to the token-injector-webhook directory
cd cmd/token-injector-webhook
# Run gofmt on all files in the cmd/token-injector-webhook directory
go fmt ./
# Run go vet on all files in the cmd/token-injector-webhook directory
go vet ./
# Run go imports on all files in the cmd/token-injector-webhook directory
goimports -w ./
# Run golangci-lint on all files in the cmd/token-injector-webhook directory
golangci-lint run ./
# Run go unit tests on all files in the cmd/token-injector-webhook directory
go test ./...
# Run go mod tidy on all files in the cmd/token-injector-webhook directory
go mod tidy
# cd back to the root directory
cd ../token-injector
# Run gofmt on all files in the cmd/token-injector directory
go fmt ./
# Run go vet on all files in the cmd/token-injector directory
go vet ./
# Run go imports on all files in the cmd/token-injector directory
goimports -w ./
# Run golangci-lint on all files in the cmd/token-injector directory
golangci-lint run ./
# Run go unit tests on all files in the cmd/token-injector directory
go test ./...
# Run go mod tidy on all files in the cmd/token-injector directory
go mod tidy
