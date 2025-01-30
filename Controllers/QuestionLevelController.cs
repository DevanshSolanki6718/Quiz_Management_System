using Microsoft.AspNetCore.Mvc;

namespace Quiz_Management.Controllers
{
    public class QuestionLevelController : Controller
    {
        public IActionResult QuestionLevelTable()
        {
            return View();
        }
    }
}
