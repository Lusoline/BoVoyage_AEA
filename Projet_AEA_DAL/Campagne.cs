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
    
    public partial class Campagne
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Campagne()
        {
            this.CampagneClients = new HashSet<CampagneClient>();
        }
    
        public long CampagneID { get; set; }
        public string LibelleCampagne { get; set; }
        public System.DateTime DateDebutCampagne { get; set; }
        public System.DateTime DateFinCampagne { get; set; }
        public string DescriptifCampagne { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CampagneClient> CampagneClients { get; set; }
    }
}
