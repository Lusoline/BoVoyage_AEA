using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Projet_AEA_UIL.Models
{
    public class Pays_M
    {
        //Ajouter les annotations requises (displayName, Required, etc.)
        public long PaysID { get; set; }
        public string NomP { get; set; }
        public long ContinentID { get; set; }
    }
}