using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Projet_AEA_UIL.Models
{
    public class FormulaireClient
    {
        [Display(Name = "Civilité")]
        public string CivClient { get; set; }

        [Display(Name = "Nom")]
        public string NomClient { get; set; }

        [Display(Name = "Prénom")]
        public string PrenomClient { get; set; }

        [DataType(DataType.EmailAddress)]
        [Display(Name = "Adresse Email")]
        public string EmailClient { get; set; }

        [Display(Name = "Date de naissance")]
        public string DateNaissanceClient { get; set; }

        [Display(Name = "Numéro de téléphone")]
        public string TelClient { get; set; }

        [Display(Name = "Adresse complète")]
        public string AdresseClient { get; set; }

    }
}