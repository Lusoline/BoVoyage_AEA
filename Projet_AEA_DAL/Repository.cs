using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Projet_AEA_DTO;

namespace Projet_AEA_DAL
{
    public class Repository
    {
        private static BOVOYAGE_AEAEntities BoVContext = new BOVOYAGE_AEAEntities();
        public static List<dtoListeContinent> GetListeContinent()
        {
            List<dtoListeContinent> resultat = new List<dtoListeContinent>();
            foreach (var c in BoVContext.Continents)
            {
                resultat.Add(new dtoListeContinent { ContinentID = c.ContinentID, LibelleContinent = c.LibelleContinent });
            }
            return resultat;
        }

        public static IEnumerable<dtoListePays> GetListePays()
        {
            List<dtoListePays> resultat = new List<dtoListePays>();
            foreach (var p in BoVContext.Pays)
            {
                resultat.Add(new dtoListePays { PaysID = p.PaysID, NomP = p.NomP, ContinentID = p.ContinentID });
            }
            return resultat;
        }

        /*public static IEnumerable<dtoListeRegion> GetListeRegion()
        {
            throw new NotImplementedException();
        }

        public static IEnumerable<dtoListeVoyage> GetListeVoyage()
        {
            throw new NotImplementedException();
        }

        public static int EnregistreDossier(long choixV, string emailAdress, string numCarte, int nbVoyageur)
        {
            throw new NotImplementedException();
        }*/
    }
}
