package maeggi.seggi.mypage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class mypageController {
	
	@RequestMapping("/mypage/ask.do")
	public String ask() {
		return "mypage/ask";
	}
	
	@RequestMapping("/mypage/ask_write.do")
	public String ask_write() {
		return "mypage/ask/write";
	}
	
	@RequestMapping("/mypage/ask_title.do")
	public String ask_title() {
		return "mypage/ask/title";
	}
	
	@RequestMapping("/mypage/information_update.do")
	public String information_update() {
		return "mypage/information/update";
	}
	
	@RequestMapping("/mypage_main.do")
	public String mypage_main() {
		return "mypage/main";
	}
	
	@RequestMapping("/mypage/mypoint.do")
	public String mypage_mypoint() {
		return "mypage/mypoint";
	}
	
	@RequestMapping("/mypage/recipe_favorite.do")
	public String mypage_recipefavorite() {
		return "mypage/recipe_favorite";
	}
	
}
