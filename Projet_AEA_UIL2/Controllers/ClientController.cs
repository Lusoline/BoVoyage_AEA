﻿using Projet_AEA_BOL;
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
    public class ClientController : Controller
    {
        public ClientController()
        {
        }
        public ActionResult EnregistreDossier(string reportEmail, string reportNumCB, int? reportNbVoyageur)
        {
            if (ModelState.IsValid)
            {
                MetierPool.EnregistreDossier(reportEmail, reportNumCB, reportNbVoyageur);
                return Redirect("http://localhost:62629/Client/ValidationDossier");

                // créer un dossier dans la table Dossier de la BDD.
            }
            else
            {
                return Redirect("http://localhost:62629/Home/Index");
            }
        }
        public ActionResult ValidationDossier()
        {
            return View();
        }
        public ActionResult CreationDossier()
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
            var fc = new FormulaireClient();
            return View(fc);
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