run:
	go run -trimpath main.go
docker:
	docker buildx build --platform=linux/amd64,linux/arm64 -t lijie0123/netecho --push .
build:
	go build -trimpath -o netecho .
build-dbg:
	go build -trimpath -gcflags="-N -l" -o netecho . 
