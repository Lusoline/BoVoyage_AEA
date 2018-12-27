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
    public class VoyageController : ApiController
    {
        //  [Route("api/voyage/Pay/Continent/reg")]
        public IEnumerable<dtoListeVoyage> Get(int Pay, int Continent, int reg)
        {
            return MetierPool.GetListeVoyage(Continent, Pay, reg);
        }
    }
}
