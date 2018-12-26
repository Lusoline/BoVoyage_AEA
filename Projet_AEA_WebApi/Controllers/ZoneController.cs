using Projet_AEA_BOL;
using Projet_AEA_DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;

namespace Projet_AEA_WebApi.Controllers
{
    [EnableCors(origins: "http://localhost:49939", headers: "*", methods: "*")]
    public class ZoneController : ApiController
    {
        public IEnumerable<dtoListeContinent> GetContinent()
        {
            return MetierPool.GetListeContinent();
        }
        public IEnumerable<dtoListePays> Get(int id)
        {
            return MetierPool.GetListePays(id);
        }
        public IEnumerable<dtoListeRegion> GetListeRegion(int idPays, int idContinent)
        {
            return MetierPool.GetListeRegion(idPays, idContinent);
        }
    }
}
