BACKEND_SVC = backend
BACKEND_OUTPUT = backend_output

OUTPUTS = $(BACKEND_OUTPUT)

# Build each microservices
all: back


backend:
	dotnet publish --output $(BACKEND_OUTPUT) $(BACKEND_SVC)

clean:
	rm -rf $(OUTPUTS)

update:
	git pull --recurse-submodules
