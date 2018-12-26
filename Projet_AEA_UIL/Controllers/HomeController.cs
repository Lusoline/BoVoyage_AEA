using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Projet_AEA_BOL;
using Projet_AEA_DTO;
using Projet_AEA_UIL.Models;

namespace Projet_AEA_UIL.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index()
        {
            var listePays = MetierPool.GetListePays();
            var listeContinent = MetierPool.GetListeContinent();
            List<Continents> modelContinent = new List<Continents>();

            foreach (var dto in listeContinent)
            {
                modelContinent.Add(new Continents { ContinentID = dto.ContinentID, LibelleContinent = dto.LibelleContinent });
            }
            return View(modelContinent);
        }
    }
}