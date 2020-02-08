package maeggi.seggi.fileupload;

import org.springframework.web.multipart.MultipartFile;

public class FileUploadVO {
	private String title;
	private String name;//입력데이터
	private MultipartFile upFile;
	public FileUploadVO() {
		
	}
	@Override
	public String toString() {
		return "FileUploadDTO [title=" + title + ", name=" + name + ", upFile=" + upFile + "]";
	}
	
	public FileUploadVO(String title, String name, MultipartFile upFile) {
		super();
		this.title = title;
		this.name = name;
		this.upFile = upFile;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public MultipartFile getUpFile() {
		return upFile;
	}
	public void setUpFile(MultipartFile upFile) {
		this.upFile = upFile;
	}
	
	
}
