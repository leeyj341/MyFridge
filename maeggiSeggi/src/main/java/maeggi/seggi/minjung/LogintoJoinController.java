package maeggi.seggi.minjung;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LogintoJoinController {
	
@RequestMapping("/logintojoin.do")	
public String logintojoin() {
	
	return "logintojoin";
}

}
