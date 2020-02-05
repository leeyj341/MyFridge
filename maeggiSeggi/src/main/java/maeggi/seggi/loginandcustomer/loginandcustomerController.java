package maeggi.seggi.loginandcustomer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class loginandcustomerController {
	@Autowired
	memberService service;
	
	
	@RequestMapping(value= "/loginandcustomer/login.do", method = RequestMethod.GET)
	public String loginPage() {
		return "loginandcustomer/login";
	}
	
	@RequestMapping(value="/loginandcustomer/login.do", method = RequestMethod.POST)
	public ModelAndView login(memberVO loginUserInfo,HttpServletRequest request) {
		System.out.println("로그인하기위해 사용자입력값"+loginUserInfo);
		ModelAndView mav = new ModelAndView();
		memberVO loginuser = service.login(loginUserInfo);
		System.out.println("로그인하고 나온정보"+loginuser);
		mav.addObject("loginuser", loginuser);
		String viewName="";
		if(loginuser!=null) {
			//로그인 성공시
			HttpSession ses = request.getSession();
			//2. 세션에 데이터 공유
			ses.setAttribute("loginuser", loginuser);
			viewName = "fridge";
		}else {
			//로그인 실패시 로그인 페이지 보여준다는 의미
			viewName = "loginandcustomer/login.do";
		}
		mav.setViewName(viewName);//viewName을 변수처리.
		return mav;
	}
	
	@RequestMapping("/loginandcustomer/logout.do")
	public String logout(HttpSession session) {
		if(session!=null) {
			session.invalidate();
		}
		return "redirect:/recipe/main.do";
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
