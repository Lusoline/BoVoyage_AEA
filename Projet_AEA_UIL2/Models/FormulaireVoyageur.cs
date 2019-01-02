using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Projet_AEA_UIL2.Models
{
    public class FormulaireVoyageur
    {

        [Display(Name = "Nom")]
        public string NomVoyageur { get; set; }

        [Display(Name = "Prénom")]
        public string PrenomVoyageur { get; set; }

        [Display(Name = "Date de naissance")]
        public string DateNaissanceVoyageur { get; set; }
    }
}