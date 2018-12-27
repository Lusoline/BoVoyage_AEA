using Projet_AEA_UIL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http.Cors;
using System.Web.Mvc;

namespace Projet_AEA_UIL.Controllers
{
    [EnableCors(origins: "http://localhost:49939", headers: "*", methods: "*")]
    public class ClientController : Controller
    {
        public ClientController()
        {
        }
        // GET: Connexion
        public ActionResult CreationDossier()
        {
            var fd = new FormDossier();        
            return View(fd);
        }
    }
}