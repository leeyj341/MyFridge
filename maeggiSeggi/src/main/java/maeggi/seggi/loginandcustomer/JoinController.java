package maeggi.seggi.loginandcustomer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JoinController {
	
@RequestMapping("/loginandcustomer/join.do")	
public String logintojoin() {
	
	return "loginandcustomer/join";   
}

}
