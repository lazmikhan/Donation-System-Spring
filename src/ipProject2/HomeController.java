package ipProject2;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
@Controller
public class HomeController {
@ResponseBody()
	@RequestMapping("/dummy")
	public String dummy()
	{
		return "dummy";
	}
}
