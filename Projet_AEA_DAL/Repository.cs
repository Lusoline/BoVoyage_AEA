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
        private BOVOYAGE_AEAEntities BoVContext = new BOVOYAGE_AEAEntities();


        public List<dtoListePays> GetListePays(int idContinent)
        {
            List<dtoListePays> resultat = new List<dtoListePays>();
            foreach (var p in BoVContext.GetListePays(idContinent))
            {
                resultat.Add(new dtoListePays { PaysID = p.PaysID, NomP = p.Li, ContinentID = p.ContinentID });
            }
            return resultat;
        }

        public List<dtoListeContinent> GetListeContinent()
        {
            var resultat = new List<dtoListeContinent>();
            foreach (var c in BoVContext.GetListeContinents())
            {
                resultat.Add(new dtoListeContinent { ContinentID = c.ContinentID, LibelleContinent = c.LibelleContinent });
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
