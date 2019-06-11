build_amd:
	dep ensure -v
	env GOARCH=amd64 GOOS=linux go build -ldflags="-s -w" -o bin/ux/main pkg/ux/main.go

build_native: 
	dep ensure -v
	go build -ldflags="-s -w" -o bin/ux/main pkg/ux/main.go

.PHONY: clean

clean:
	rm -rf ./bin ./vendor Gopkg.lock