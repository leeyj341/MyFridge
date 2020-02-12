package maeggi.seggi.mealPlanner;



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import maeggi.seggi.loginandcustomer.memberVO;
import maeggi.seggi.mypage.PointVO;

@Controller
public class mealPlannerController {
	@Autowired
	mealPlannerService service;
	
	/*@RequestMapping(value = "/mealPlanner/read.do", method = RequestMethod.GET)
	public ModelAndView read(mealPlannerVO meal,HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		HttpSession ses = req.getSession(false);
		if(ses!=null) {
			memberVO user=(memberVO) ses.getAttribute("loginuser");
			if(user!=null) {
				meal.setMember_id((user.getMember_id()));//pointVO에 로그인한 회원의 id를 set.
			}
		}
		mav.addAttribute("meal", service.read(meal));
		return "mypage/main";
	}*/

	
	
	
	
	//식단에 추가하는 기능
	@RequestMapping(value = "/mealPlanner/insert.do", method = RequestMethod.POST, produces="application/text;charset=UTF-8")
	public void insert(mealPlannerVO meal) {
		System.out.println("식단에 추가할 아이들"+meal);
		int result = service.insert(meal);
		System.out.println("추가된 행 갯수"+result);
	}
}












