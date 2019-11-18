package co.grandcircus.Lab22;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FormController {

	@RequestMapping("/form")
	public String showNewFormPage() {
		return "form";
	}
	
	@RequestMapping("/register-submit")
	public String showNewFormPage2() {
		return "register-submit";
	}

	@PostMapping("/add-person")
	public ModelAndView formDeets(
			@RequestParam("first") String f, 
			@RequestParam("last") String l,
			@RequestParam("email") String e, 
			@RequestParam("phone") String pn, 
			@RequestParam("password") String pw, 
			@RequestParam("specialOffersYes") boolean soy,
			@RequestParam(value = "financingFollowupYes", required = false) boolean ffy,
			@RequestParam("financingFollowupMethod") String ffm)
	{
		Person pFromForm = new Person(f, l, e, pn, pw, soy, ffy, ffm);
		return new ModelAndView("register-submit", "p", pFromForm);
	}

}