ACCOUNT_SVC = ecommerce-account
ACCOUNT_OUTPUT = account_output

CART_SVC = shopping-cart
CART_OUTPUT = cart_output

CATALOGUE_SVC = product-catalogue
CATALOGUE_OUTPUT = catalogue_output

OUTPUTS = $(ACCOUNT_OUTPUT) $(CART_OUTPUT) $(CATALOGUE_OUTPUT)

# Build each microservices
all: account cart catalogue

account:
	dotnet publish --output $(ACCOUNT_OUTPUT) $(ACCOUNT_SVC)

cart:
	dotnet publish --output $(CART_OUTPUT) $(CART_SVC)

catalogue:
	dotnet publish --output $(CATALOGUE_OUTPUT) $(CATALOGUE_SVC)

clean:
	rm -rf $(OUTPUTS)

update:
	git pull --recurse-submodules
