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
        public static BOVOYAGE_AEAEntities BoVContext = new BOVOYAGE_AEAEntities();


        public static IEnumerable<dtoListePays> GetListePays(int idContinent)
        {
            var data = BoVContext.GetListePays(idContinent);

            var resultat = new List<dtoListePays>();
            foreach (var lp in data)
            {
                resultat.Add(new dtoListePays { PaysID = lp.PaysID, LibellePays = lp.LibellePays });
            }
            return resultat;
        }
        public static IEnumerable<dtoListeContinent> GetListeContinent()
        {
            var data = BoVContext.GetListeContinents();

            var resultat = new List<dtoListeContinent>();
            foreach (var lc in data)
            {
                resultat.Add(new dtoListeContinent { ContinentID = lc.ContinentID, LibelleContinent = lc.LibelleContinent });
            }
            return resultat;
        }

        public static IEnumerable<dtoListeRegion> GetListeRegion(int idPays, int idContinent)
        {
            var data = BoVContext.GetListeRegion(idPays, idContinent);

            var resultat = new List<dtoListeRegion>();
            foreach (var lr in data)
            {
                resultat.Add(new dtoListeRegion { RegionID = lr.RegionID, LibelleRegion = lr.LibelleRegion });
            }
            return resultat;
        }

        /*public static IEnumerable<dtoListeVoyage> GetListeVoyage()
        {
            throw new NotImplementedException();
        }*/
    }
}