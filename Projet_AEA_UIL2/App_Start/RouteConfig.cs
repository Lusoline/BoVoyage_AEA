using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace Projet_AEA_UIL2
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapMvcAttributeRoutes();

      //      routes.MapRoute(
      //   name: "Accueil",
      //   url: "{controller}/{action}/{id}",
      //   defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
      //);

            //routes.MapRoute(
            //   name: "ActionClient",
            //   url: "{controller}/{action}/{id}",
            //   defaults: new { controller = "Client", action = "CreationDossier", id = UrlParameter.Optional }
            //);

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );
        }
    }
    }

