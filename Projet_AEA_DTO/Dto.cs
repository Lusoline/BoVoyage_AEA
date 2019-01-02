using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Projet_AEA_DTO
{
    public class dtoListeContinent
    {
        public long ContinentID;
        public string LibelleContinent;
    }
    public class dtoListePays
    {
        public long PaysID;
        public string LibellePays;
        public long ContinentID;
    }
    public class dtoListeRegion
    {
        public long RegionID;
        public string LibelleRegion;
        public long PaysID;
    }
    public class dtoListeVoyage
    {
        public long VoyageID;
        public string LibelleVoyage;
        public string DescriptifVoyage;
        public DateTime DateDepartVoyage;
        public DateTime DateRetourVoyage;
        public long? DisponibiliteVoyage;
        public double PrixVoyage;
        public long RegionID;
      
    }
    public class dtoNouveauDossier
    {
        public int DossierId;
        public string Email;
        public string NumCB;
        public int NbVoyageurs;
        public int VoyageId;
    }
}
