package maeggi.seggi.mypage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class askController {
	
	@RequestMapping("/ask.do")
	public String ask() {
		return "mypage/ask";
	}
	
	@RequestMapping("/ask_write.do")
	public String ask_write() {
		return "mypage/ask/write";
	}
	
	@RequestMapping("/ask_title.do")
	public String ask_title() {
		return "mypage/ask/title";
	}
	
	@RequestMapping("/information_update.do")
	public String information_update() {
		return "mypage/information/update";
	}
	
	@RequestMapping("/mypage_main.do")
	public String mypage_main() {
		return "mypage/mypage/main";
	}
	
}
