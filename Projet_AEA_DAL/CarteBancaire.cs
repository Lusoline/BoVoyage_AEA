//------------------------------------------------------------------------------
// <auto-generated>
//     Ce code a été généré à partir d'un modèle.
//
//     Des modifications manuelles apportées à ce fichier peuvent conduire à un comportement inattendu de votre application.
//     Les modifications manuelles apportées à ce fichier sont remplacées si le code est régénéré.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Projet_AEA_DAL
{
    using System;
    using System.Collections.Generic;
    
    public partial class CarteBancaire
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public CarteBancaire()
        {
            this.Dossiers = new HashSet<Dossier>();
        }
    
        public long CarteBancaireID { get; set; }
        public string NomCB { get; set; }
        public string NumCB { get; set; }
        public System.DateTime DateExpCB { get; set; }
        public string CryptoCB { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Dossier> Dossiers { get; set; }
    }
}
