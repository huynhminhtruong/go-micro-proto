install-protobuf:
	@go install google.golang.org/protobuf/cmd/protoc-gen-go@latest

install-grpc:
	@go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest

build-service:
	@protoc -I ./${SERVICE_NAME} \
		--go_out ./golang/${SERVICE_NAME} \
		--go_opt paths=source_relative \
		--go-grpc_out ./golang/${SERVICE_NAME} \
		--go-grpc_opt paths=source_relative \
		./${SERVICE_NAME}/*.proto
