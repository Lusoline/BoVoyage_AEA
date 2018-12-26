using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Projet_AEA_DTO;
using Projet_AEA_DAL;

namespace Projet_AEA_BOL
{
    public static class MetierPool
    {
       

        public static List<dtoListePays> GetListePays(int idContinent)
        {
            return Pays.GetListePays(idContinent);
        }

        public static List<dtoListeContinent> GetListeContinent()
        {
            return Continent.GetListeContinent();
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

    public static class Pays
    {
        private static Repository DAL_Repository = new Repository();
        public static List<dtoListePays> GetListePays(int idContinent)
        {
            var liste = DAL_Repository.GetListePays(idContinent);
            var resultat = new List<dtoListePays>();
            foreach (var dto in liste)
            {
                resultat.Add(new dtoListePays { PaysID = dto.PaysID, NomP = dto.NomP, ContinentID = dto.ContinentID });
            }
            return resultat;
        }
    }

    public static class Continent
    {
        private static Repository DAL_Repository = new Repository();
        public static List<dtoListeContinent> GetListeContinent()
        {            
            var liste = DAL_Repository.GetListeContinent();
            var resultat = new List<dtoListeContinent>();
            foreach (var dto in liste)
            {
                resultat.Add(new dtoListeContinent { ContinentID = dto.ContinentID, LibelleContinent = dto.LibelleContinent });
            }
            return resultat;
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