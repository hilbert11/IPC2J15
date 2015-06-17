using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(IPC2Fase2QE.Startup))]
namespace IPC2Fase2QE
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
