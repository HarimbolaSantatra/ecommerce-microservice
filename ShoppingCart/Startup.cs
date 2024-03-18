namespace ShoppingCart {
    using Microsoft.AspNetCore.Builder;
    using Microsoft.Extensions.DependencyInjection;

    public class Startup
	{
	    public void ConfigureServices(IServiceCollection services)
	    {
		// Adds MVC controller and helper services to the service collection
		services.AddControllers();
	    }
	public void Configure(IApplicationBuilder app)
	{
	    app.UseHttpsRedirection();
	    // Redirects all HTTP requests to HTTPS
	    app.UseRouting();
	    // Adds all endpoints in all controllers to MVCs route table
	    app.UseEndpoints(endpoints =>
		endpoints.MapControllers());
	}
    }

}
