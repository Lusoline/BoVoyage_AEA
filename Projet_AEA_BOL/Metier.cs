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


        public static IEnumerable<dtoListePays> GetListePays(int idContinent)
        {
            return Pays.GetListePays(idContinent);
        }

        public static IEnumerable<dtoListeContinent> GetListeContinent()
        {
            return Continent.GetListeContinent();
        }

        public static IEnumerable<dtoListeRegion> GetListeRegion(int idPays, int idContinent)
        {
            return Region.GetListeRegion(idPays, idContinent);
        }

        public static IEnumerable<dtoListeVoyage> GetListeVoyage(int idContinent, int idPays, int idRegion)
        {
            return Voyage.GetListeVoyage(idContinent, idPays, idRegion);
        }
        public static dtoListeVoyage GetVoyage(int id)
        {
            return Voyage.GetVoyage(id);
        }




        public static int EnregistreDossier(string reportEmail, string reportNumCB, int? reportNbVoyageur)
        {
            return NewDossier.EnregistreDossier(reportEmail, reportNumCB, reportNbVoyageur);
        }

    }

    public static class Pays
    {
        public static IEnumerable<dtoListePays> GetListePays(int idContinent)
        {
            return Repository.GetListePays(idContinent);
        }
    }

    public class Continent
    {

        public static IEnumerable<dtoListeContinent> GetListeContinent()
        {
            return Repository.GetListeContinent();
        }
    }

    public class Region
    {

        public static IEnumerable<dtoListeRegion> GetListeRegion(int idPays, int idContinent)
        {
            return Repository.GetListeRegion(idPays, idContinent);
        }
    }

    public class Voyage
    {

        public static IEnumerable<dtoListeVoyage> GetListeVoyage(int idContinent, int idPays, int idRegion)
        {
            return Repository.GetListeVoyage(idContinent, idPays, idRegion);
        }
        public static dtoListeVoyage GetVoyage(int id)
        {
            return Repository.GetVoyage(id);
        }
    }



    public class NewDossier
    {
        public static int EnregistreDossier(string reportEmail, string reportNumCB, int? reportNbVoyageur)
        {
            return Repository.EnregistreDossier(reportEmail, reportNumCB, reportNbVoyageur);
        }
    }
}