using Projet_AEA_BOL;
using Projet_AEA_UIL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http.Cors;
using System.Web.Mvc;
using Projet_AEA_DTO;
using Projet_AEA_DAL;

namespace Projet_AEA_UIL.Controllers
{
    [EnableCors(origins: "http://localhost:49939", headers: "*", methods: "*")]
    public class ClientController : Controller
    {
        public ClientController()
        {
        }
        // GET: Connexion
        public ActionResult EnregistreDossier(string reportEmail, string reportNumCB, int reportNbVoyageur)
        {

            return Redirect("http://localhost:49939/Home/Index");
        }

        public ActionResult CreationDossier(int idVoy)
        {
            //Création de la vue en se basant sur le model CreationDossier.
            var fd = new CreationDossier();
            return View(fd);
        }
        public ActionResult Connexion()
        {
            var cc = new ConnexionClient();
            return View(cc);
        }
        [HttpPost]
        public ActionResult FormulaireClient()
        {
            var formulaireClient = new FormulaireClient();
            return View(formulaireClient);
        }
        [HttpPost]
        public ActionResult FormulaireVoyageur(FormulaireVoyageur formulaireVoyageur, string returnUrl)
        {
            if (ModelState.IsValid)
            {
                // enregistrer les informations complémentaire du voyageur dans la table Voyageur de la BDD.
            }
            return View(formulaireVoyageur);
        }
    }
}