package maeggi.seggi.loginandcustomer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class loginandcustomerController {

	@RequestMapping("/loginandcustomer/login.do")
	public String login() {

		return "loginandcustomer/login";
	}

	@RequestMapping("/loginandcustomer/join.do")
	public String join() {

		return "loginandcustomer/join";
	}

	@RequestMapping("/loginandcustomer/admin_askdetail.do")
	public String admin_askdetail() {

		return "loginandcustomer/admin_askdetail";
	}

	@RequestMapping("/loginandcustomer/admin_asklist.do")
	public String admin_asklist() {

		return "loginandcustomer/admin_asklist";
	}

	@RequestMapping("/loginandcustomer/noticedetail.do")
	public String noticedetail() {

		return "loginandcustomer/noticedetail";
	}

	@RequestMapping("/loginandcustomer/noticelist.do")
	public String noticelist() {

		return "loginandcustomer/noticelist";
	}

}
