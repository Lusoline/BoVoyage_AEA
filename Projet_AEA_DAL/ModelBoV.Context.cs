﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class BOVOYAGE_AEAEntities : DbContext
    {
        public BOVOYAGE_AEAEntities()
            : base("name=BOVOYAGE_AEAEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Campagne> Campagnes { get; set; }
        public virtual DbSet<CampagneClient> CampagneClients { get; set; }
        public virtual DbSet<CarteBancaire> CarteBancaires { get; set; }
        public virtual DbSet<Client> Clients { get; set; }
        public virtual DbSet<Continent> Continents { get; set; }
        public virtual DbSet<Dossier> Dossiers { get; set; }
        public virtual DbSet<Pay> Pays { get; set; }
        public virtual DbSet<Region> Regions { get; set; }
        public virtual DbSet<Voyage> Voyages { get; set; }
        public virtual DbSet<Voyageur> Voyageurs { get; set; }
    
        public virtual ObjectResult<GetListeContinents_Result> GetListeContinents()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetListeContinents_Result>("GetListeContinents");
        }
    
        public virtual ObjectResult<GetListePays_Result> GetListePays(Nullable<int> choixContinentID)
        {
            var choixContinentIDParameter = choixContinentID.HasValue ?
                new ObjectParameter("choixContinentID", choixContinentID) :
                new ObjectParameter("choixContinentID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetListePays_Result>("GetListePays", choixContinentIDParameter);
        }
    
        public virtual ObjectResult<GetListeRegion_Result> GetListeRegion(Nullable<int> choixPaysID, Nullable<int> choixContinentID)
        {
            var choixPaysIDParameter = choixPaysID.HasValue ?
                new ObjectParameter("choixPaysID", choixPaysID) :
                new ObjectParameter("choixPaysID", typeof(int));
    
            var choixContinentIDParameter = choixContinentID.HasValue ?
                new ObjectParameter("choixContinentID", choixContinentID) :
                new ObjectParameter("choixContinentID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetListeRegion_Result>("GetListeRegion", choixPaysIDParameter, choixContinentIDParameter);
        }
    
        public virtual ObjectResult<GetListeVoyage_Result> GetListeVoyage(Nullable<int> choixContinentID, Nullable<int> choixPaysID, Nullable<int> choixRegionID)
        {
            var choixContinentIDParameter = choixContinentID.HasValue ?
                new ObjectParameter("choixContinentID", choixContinentID) :
                new ObjectParameter("choixContinentID", typeof(int));
    
            var choixPaysIDParameter = choixPaysID.HasValue ?
                new ObjectParameter("choixPaysID", choixPaysID) :
                new ObjectParameter("choixPaysID", typeof(int));
    
            var choixRegionIDParameter = choixRegionID.HasValue ?
                new ObjectParameter("choixRegionID", choixRegionID) :
                new ObjectParameter("choixRegionID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetListeVoyage_Result>("GetListeVoyage", choixContinentIDParameter, choixPaysIDParameter, choixRegionIDParameter);
        }
    
        public virtual ObjectResult<Nullable<int>> EnregistreDossier(string emailClient, string numCBClient, Nullable<int> nbVoyageur)
        {
            var emailClientParameter = emailClient != null ?
                new ObjectParameter("EmailClient", emailClient) :
                new ObjectParameter("EmailClient", typeof(string));
    
            var numCBClientParameter = numCBClient != null ?
                new ObjectParameter("NumCBClient", numCBClient) :
                new ObjectParameter("NumCBClient", typeof(string));
    
            var nbVoyageurParameter = nbVoyageur.HasValue ?
                new ObjectParameter("NbVoyageur", nbVoyageur) :
                new ObjectParameter("NbVoyageur", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<int>>("EnregistreDossier", emailClientParameter, numCBClientParameter, nbVoyageurParameter);
        }
    }
}
