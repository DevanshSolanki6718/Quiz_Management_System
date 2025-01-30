using Microsoft.AspNetCore.Mvc;

namespace Quiz_Management.Controllers
{
    public class UserController : Controller
    {
        public IActionResult UserTable()
        {
            return View();
        }

        public IActionResult UserUpdate()
        {
            return View();
        }
    }
}
