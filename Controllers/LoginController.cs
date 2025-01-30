using Microsoft.AspNetCore.Mvc;

namespace Quiz_Management.Controllers
{
    public class LoginController : Controller
    {
        public IActionResult Login()
        {
            return View();
        }
    }
}
