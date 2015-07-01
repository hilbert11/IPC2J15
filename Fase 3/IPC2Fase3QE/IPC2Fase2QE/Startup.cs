using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(IPC2Fase3QE.Startup))]
namespace IPC2Fase3QE
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
