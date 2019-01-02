using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Projet_AEA_UIL2.Models
{
    public class CreationDossier
    {
        public int Id { get; set; }
        [Required]
        public string Email { get; set; }
        [Required]
        public string NumCB { get; set; }
        [Required, Range(1, 9,
            ErrorMessage = "Le nombre de voyageur autorisés va de 1 à 9.")]
        public int NbVoyageurs { get; set; }
    }
}