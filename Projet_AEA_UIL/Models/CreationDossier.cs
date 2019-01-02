using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Projet_AEA_UIL.Models
{
    public class CreationDossier
    {
        public int Id { get; set; }
        [Required]
        public string Email { get; set; }
        [Required]
        public string NumCB { get; set; }
        [Required]
        public int NbVoyageurs { get; set; }
    }
}