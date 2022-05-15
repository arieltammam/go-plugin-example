.PHONY: all build test


build:
	@echo "Building the binary..."
	@go build -gcflags='all=-N -l' -buildmode=plugin -o bin/eng/eng.so eng/greeter.go
	@go build -gcflags='all=-N -l' -buildmode=plugin -o bin/chi/chi.so chi/greeter.go
	@go build -gcflags='all=-N -l' -buildmode=plugin -o bin/swe/swe.so swe/greeter.go
	@echo "You can now use ./${BIN_NAME}"


.PHONY: clean
clean:
	rm -rf bin
