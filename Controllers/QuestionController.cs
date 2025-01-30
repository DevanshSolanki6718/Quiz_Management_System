using Microsoft.AspNetCore.Mvc;

namespace Quiz_Management.Controllers
{
    public class QuestionController : Controller
    {
        public IActionResult QuestionTable()
        {
            return View();
        }
    }
}
