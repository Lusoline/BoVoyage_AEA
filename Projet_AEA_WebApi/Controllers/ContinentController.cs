using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Projet_AEA_DTO;
using Projet_AEA_BOL;
using System.Web.Http.Cors;

namespace Projet_AEA_WebApi.Controllers
{
    [EnableCors(origins: "http://localhost:49964", headers: "*", methods: "*")]
    public class ContinentController : ApiController
    {
        public IEnumerable<dtoListeContinent> GetAllContinent()
        {
            return MetierPool.GetListeContinent();
        }
    }
}
