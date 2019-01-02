using System.Web;
using System.Web.Mvc;

namespace Projet_AEA_UIL2
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
