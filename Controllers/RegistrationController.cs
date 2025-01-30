using Microsoft.AspNetCore.Mvc;

namespace Quiz_Management.Controllers
{
    public class RegistrationController : Controller
    {
        public IActionResult Registration()
        {
            return View();
        }
    }
}
