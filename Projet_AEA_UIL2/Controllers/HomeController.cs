using System.Web.ModelBinding;
using Projet_AEA_BOL;
using Projet_AEA_UIL2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http.Cors;
using System.Web.Mvc;


namespace Projet_AEA_UIL2.Controllers
{
    [EnableCors(origins: "http://localhost:62629", headers: "*", methods: "*")]
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Reserver()
        {

            return Redirect("http://localhost:62629/Client/CreationDossier");
        }
    }
}