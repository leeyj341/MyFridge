package maeggi.seggi.fileupload;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.util.WebUtils;

@Controller
public class FileUploadController {
	@Autowired
	FileUploadService service;
	@RequestMapping(value="recipe/upload.do",method={RequestMethod.GET, RequestMethod.POST})
	public String upload(FileUploadVO fileInfo, 
			HttpSession session) throws Exception{
		System.out.println("fileinfo====>"+fileInfo);
		//spring mvc(spring mvc 아키텍쳐로 동작을 위해 필요한 모든 컴포넌트들의
				//작업아래서)에서 자동으로 생성해서 넘겨준 업로드된 파일객체인 MultipartFile을 꺼내서
				//내가 원하는 위치에 저장하기
				//1. dto에서 MultipartFile객체 꺼내기
		MultipartFile file = fileInfo.getUpFile();
		//2.실제 저장 위치
		String path = WebUtils.getRealPath(session.getServletContext(),"/WEB_INF/upload");
		//3. 파일명
				String fileName = file.getOriginalFilename();
				System.out.println(path+"==========="+fileName);
				//4. FileUploadService의 upload메소드를 호출해서 실제 파일을 저장하기
				service.upload(file, path, fileName);
		return "recipe/upload";
	}
}
