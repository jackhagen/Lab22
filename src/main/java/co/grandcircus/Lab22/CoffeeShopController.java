package co.grandcircus.Lab22;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CoffeeShopController {

	@Autowired
	private Person p;

	@RequestMapping("/")
	public ModelAndView form() {

		ModelAndView mv = new ModelAndView("index", "CHANGE_ME", "CHANGE_ME_TOO"); // CHAAANGE MEEEE
		mv.addObject("form",
				p.getFirstName() + " " + p.getLastName() + p.getEmail() + p.getPhoneNumber() + p.getPassword());

		return mv;
	}

//	@RequestMapping("/form-submit")
//	public ModelAndView formPage(@RequestParam("fName") String firstName, @RequestParam(
//	String hello = "Hello, " + firstName + " " + lastName; return new ModelAndView("form", "user", hello);
//	}

}
