using System.Web.Http.Cors;
using System.Web.Mvc;

namespace Projet_AEA_UIL.Controllers
{
    [EnableCors(origins: "http://localhost:49939", headers: "*", methods: "*")]
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Reserver()
        {

            return Redirect("http://localhost:49939/Client/CreationDossier");
        }
    }
}