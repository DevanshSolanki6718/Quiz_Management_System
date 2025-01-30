using Microsoft.AspNetCore.Mvc;

namespace Quiz_Management.Controllers
{
    public class QuizController : Controller
    {
        public IActionResult QuizTable()
        {
            return View();
        }
    }
}
