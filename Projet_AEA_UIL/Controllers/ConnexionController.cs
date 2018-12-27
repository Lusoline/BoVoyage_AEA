using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http.Cors;
using System.Web.Mvc;

namespace Projet_AEA_UIL.Controllers
{
    [EnableCors(origins: "http://localhost:49939", headers: "*", methods: "*")]
    public class ConnexionController : Controller
    {
        // GET: Connexion
        public ActionResult Index()
        {
            return View();
        }
    }
}