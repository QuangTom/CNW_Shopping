using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CNW_Shopping.Startup))]
namespace CNW_Shopping
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
