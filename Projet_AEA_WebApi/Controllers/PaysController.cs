using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;
using Projet_AEA_BOL;
using Projet_AEA_DTO;

namespace Projet_AEA_WebApi.Controllers
{
    [EnableCors(origins: "http://localhost:49964", headers: "*", methods: "*")]
    public class PaysController : ApiController
    {
        public IEnumerable<dtoListePays> GetListePays(int idContinent)
        {
            if (idContinent == -1) return null;
            return MetierPool.GetListePays(idContinent);
        }
    }
}
