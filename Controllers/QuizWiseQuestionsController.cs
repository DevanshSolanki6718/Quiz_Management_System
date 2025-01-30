using Microsoft.AspNetCore.Mvc;

namespace Quiz_Management.Controllers
{
    public class QuizWiseQuestionsController : Controller
    {
        public IActionResult QuizWiseQuestionsTable()
        {
            return View();
        }
    }
}
