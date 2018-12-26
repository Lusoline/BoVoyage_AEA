using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Projet_AEA_DTO;
using Projet_AEA_DAL;

namespace Projet_AEA_BOL
{
    public class MetierPool
    {
        public static IEnumerable<dtoListeContinent> GetListeContinent()
        {
            return Continent.GetListeContinent();
        }

        public static IEnumerable<dtoListePays> GetListePays()
        {
            return Pays.GetListePays();
        }

        
        /*public static IEnumerable<dtoListeRegion> GetListeRegion()
        {
            return Region.GetListeRegion();
        }

        public static IEnumerable<dtoListeVoyage> GetListeVoyage()
        {
            return Voyage.GetListeVoyage();
        }

        public static int EnregistreDossier(long choixV, string emailAdress, string numCarte, int nbVoyageur)
        {
            return Dossier.EnregistreDossier(choixV, emailAdress, numCarte, nbVoyageur);
        }*/
    }

    public class Continent
    {
        private static Repository DAL_Repository = new Repository();

        //public long ContinentID { get; set; }
        //public string LibelleContinent { get; set; }

        public static IEnumerable<dtoListeContinent> GetListeContinent()
        {            
            return Repository.GetListeContinent();
        }
    }

    public class Pays
    {
        public static IEnumerable<dtoListePays> GetListePays()
        {
            return Repository.GetListePays();
        }
    }

    /*public class Region
    {

        public static IEnumerable<dtoListeRegion> GetListeRegion()
        {
            return Repository.GetListeRegion();
        }
    }

    public class Voyage
    {

        public static IEnumerable<dtoListeVoyage> GetListeVoyage()
        {
            return Repository.GetListeVoyage();
        }
    }

    public class Dossier
    {
        public static int EnregistreDossier(long choixV, string emailAdress, string numCarte, int nbVoyageur)
        {
            return Repository.EnregistreDossier(choixV, emailAdress, numCarte, nbVoyageur);
        }
    }*/
}