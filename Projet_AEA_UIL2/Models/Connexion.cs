using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Projet_AEA_UIL2.Models
{
    public class ConnexionClient
    {
        [Required]
        [Display(Name = "Email")]
        public string EmailClient { get; set; }

        [Required]
        [DataType(DataType.Password)]
        [Display(Name = "Mot de passe")]
        public string MdPClient { get; set; }
    }
    public class ConnexionAgent
    {
        [Required]
        [Display(Name = "Email")]
        public string LoginAgent { get; set; }

        [Required]
        [DataType(DataType.Password)]
        [Display(Name = "Mot de passe")]
        public string MdPAgent { get; set; }
    }

}