package maeggi.seggi.loginandcustomer;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
/*import org.springframework.social.oauth2.GrantType;
import org.springframework.social.oauth2.OAuth2Operations;*/
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/*import com.jade.swp.auth.SNSLogin;
import com.jade.swp.auth.SnsValue;*/
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
		ModelAndView mav = new ModelAndView();
		memberVO loginuser = service.login(loginUserInfo);
		System.out.println("로그인성공! 로그인된 회원정보: "+ loginuser);
		String viewName="";
		mav.addObject("loginuser", loginuser);
		if(loginuser!=null) {
			//로그인 성공시.
			HttpSession ses = request.getSession();
			//2. 세션에 데이터 공유
			ses.setAttribute("loginuser", loginuser);
			viewName = "fridge";
		}else {
			//로그인 실패시 로그인 페이지 보여준다는 의미
			viewName = "loginandcustomer/login";
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
/*	@RequestMapping(value = "/kakaoOauth.do")
	public String getKakaoSignIn(ModelMap model,@RequestParam("code") String code, HttpSession session) throws Exception {
	  JsonNode userInfo = kakaoLogin.getKakaoUserInfo(code);
	  System.out.println(userInfo);
	  String id = userInfo.get("id").toString();
	  String email = userInfo.get("kaccount_email").toString();
	  String image = userInfo.get("properties").get("profile_image").toString();
	  String nickname = userInfo.get("properties").get("nickname").toString();
	  System.out.println(id + email);
	  model.addAttribute("k_userInfo", userInfo);
	  model.addAttribute("id", id);
	  model.addAttribute("email", email);
	  model.addAttribute("nickname", nickname);
	  model.addAttribute("image", image);
	  return "main/main.tiles";
	}*/
	//회원가입 view
	@RequestMapping(value= "/loginandcustomer/join.do", method = RequestMethod.GET)
	public String joinView() {
		return "loginandcustomer/join";
	}
	// 회원가입 Post
	@RequestMapping(value = "/loginandcustomer/join.do", method = RequestMethod.POST)
	public String join(memberVO user){
		System.out.println("넘어온 정보"+user);
		service.insert(user);
		return "redirect:/loginandcustomer/login.do";
	}
	@RequestMapping(value = "/loginandcustomer/idCheck.do", method = RequestMethod.GET ,
			produces="application/text;charset=utf-8")
	public @ResponseBody String idCheck(String member_id) {
		boolean state = service.idCheck(member_id);
	    String result ="";
		if(state) {
			result = "사용 불가능한 아이디";
		}else {
			result = "사용 가능한 아이디";
		}
		return result;
	}
	
	
	@RequestMapping("/loginandcustomer/noticedetail.do")
	public String noticedetail() {
		return "loginandcustomer/noticedetail";
	}
	@RequestMapping("/loginandcustomer/noticelist.do")
	public String noticelist() {
		return "loginandcustomer/noticelist";
	}
	@RequestMapping("/loginandcustomer/admin_notice_write.do")
	public String admin_notice_write() {
		return "loginandcustomer/admin_notice_write";
	}
	/*@RequestMapping("/testLogin")
	public String isComplete(HttpSession session) {
		return "naver/naverlogin";
	}
	@RequestMapping("/callback")
	public String navLogin(HttpServletRequest request) throws Exception{
		return "naver/callback";
	}
	@RequestMapping(value="/testLoginjs", method=RequestMethod.GET)
	public String isCompletejs() {
		return "naver/naverloginjs";
	}
	@RequestMapping(value="/callbackjs", method=RequestMethod.GET)
	public String navLoginjs(HttpSession session) throws Exception{
		return "naver/callbackjs";
	}*/
	
	
	//전체 회원 보기 (관리자용)
	@RequestMapping("/loginandcustomer/admin_memberview.do")
	public ModelAndView admin_listall() {
		ModelAndView mav = new ModelAndView();
		List<memberVO> admin_memberview = service.admin_memberview();
		mav.addObject("admin_memberview", admin_memberview);
		mav.setViewName("loginandcustomer/admin_memberview");
		return mav;
	}
	
	@RequestMapping(value = "/loginandcustomer/admin_delete.do", method = RequestMethod.GET)
	public String admin_delete(memberVO member_id) {
		System.out.println("삭제할 member_id: "+member_id);
		service.admin_memberdelete(member_id);
	
		return "redirect:/loginandcustomer/admin_memberview.do";
	}
	/*
	 * 	//제목을 눌러 글 상세보기 시 
	@RequestMapping(value = "/board/read.do", method = RequestMethod.GET)
	public String read(BoardVO boardVO, Model model) {
		model.addAttribute("read", service.read(boardVO.getAskno()));
		model.addAttribute("list_reply", replyService.list_reply());
		return "mypage/ask/title";
	}
	 */
	
}