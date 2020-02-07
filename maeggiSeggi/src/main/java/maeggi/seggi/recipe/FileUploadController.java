package maeggi.seggi.recipe;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FileUploadController {
	@Autowired
	FileUploadService service;
	@RequestMapping(value="recipe/upload.do",method=RequestMethod.POST)
	public String upload(FileUploadDTO fileInfo, 
			HttpSession session) throws Exception{
		return "recipe/upload";
	}
}
