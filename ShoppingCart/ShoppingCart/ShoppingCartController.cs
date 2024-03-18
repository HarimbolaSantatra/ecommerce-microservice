namespace ShoppingCart.Shoppingcart
{
    using Microsoft.AspNetCore.Mvc;
    using ShoppingCart;

    [Route("/shoppingcart")]
    public class ShoppingCartController : ControllerBase
    {
	private readonly IShoppingCartStore shoppingCartStore;

	public ShoppingCartController(IShoppingCartStore shoppingCartStore)
	{
	    this.shoppingCartStore = shoppingCartStore;
	}

	// Declares the endpoint for handling requests to /shoppingcart/{userid}
	[HttpGet("{userId:int}")]
	public ShoppingCart Get(int userId) =>
	    this.shoppingCartStore.Get(userId);

    }
}
