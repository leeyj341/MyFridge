package maeggi.seggi.loginandcustomer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	
	@RequestMapping("/loginandcustomer/login.do")
	
	public String login() {
		
		return "loginandcustomer/login";
	}

}
