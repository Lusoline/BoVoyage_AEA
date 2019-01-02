using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Projet_AEA_UIL2.Startup))]
namespace Projet_AEA_UIL2
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
