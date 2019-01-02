using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Projet_AEA_UIL2.Controllers
{
    [Authorize]
    public class EspaceClientController : Controller
    {
        [AllowAnonymous]
        public ActionResult Index()
        {
            return View();
        }
        [Route("EspaceClient/infos")]
        public ActionResult ModifierInfos()
        {
            return View();
        }
        [Route("EspaceClient/annulerCommande")]
        public ActionResult AnnulerCommande()
        {
            return View();
        }
        //public ActionResult ConsulterCommandes()
        //{
        //    return View();
        //}
    }
}