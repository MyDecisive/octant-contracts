SHELL := /bin/bash

GO_LDFLAGS=-ldflags "-extldflags -static -s -w"

.PHONY: install-tools
install-tools:
	@go install github.com/bufbuild/buf/cmd/buf@v1.57.0
	@go install github.com/fullstorydev/grpcurl/cmd/grpcurl@latest
	@go install github.com/sudorandom/protoc-gen-connect-openapi@latest

.PHONY: rpcgen
rpcgen: install-tools
	@buf generate