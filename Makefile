ACCOUNT_SVC = ecommerce-account
ACCOUNT_OUTPUT = $(ACCOUNT_SVC)/out
CART_SVC = ecommerce-shopping-cart
CART_OUTPUT = cart_output
OUTPUTS = $(ACCOUNT_OUTPUT)

all:
	# Build each microservices
	dotnet publish --output $(ACCOUNT_OUTPUT) $(ACCOUNT_SVC)

clean:
	rm -rf $(OUTPUTS)

update:
	git pull --recurse-submodules
