package maeggi.seggi.recipe;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RecipeController {
	
	@Autowired
	RecipeService service;
	private RecipeDAO mapper;
	@RequestMapping("/recipe/main.do")
	public String recipe() {
		return "main";
	}
	@RequestMapping("/recipe/themeRecipe.do")
	public String theme() {
		return "theme";
	}
	/*@RequestMapping("/recipe/levelRecipe.do")
	public String level() {
		return "level";
	}
/*	@RequestMapping(value = "/recipe/searchRecipe.do",method=RequestMethod.GET)
	public String search(String search) {
		return "search";

	}*/
	@RequestMapping("/recipe/detailRecipe.do")
	public ModelAndView detail(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		System.out.println("====================================================================================");
		String recipe_id = req.getParameter("id");
		System.out.println(recipe_id);
		ArrayList<HashMap<String, String>> detail = (ArrayList<HashMap<String, String>>)service.detail(recipe_id);
		mav.addObject("detail",detail);
		mav.setViewName("detail");
		return mav;
	}
	
	
/*	@RequestMapping("/recipe/addPlanner.do")
	public String add() {
		return "add";
	}
	
	
	@RequestMapping("/recipe/searchRecipe.do")
	public ModelAndView recipeList(HttpServletRequest request) {
		PageMaker pageMaker = new PageMaker();
		ModelAndView mav = new ModelAndView();
		
		int pagenum = Integer.parseInt(request.getParameter("pagenum"));
		System.out.println("pagenum=>"+pagenum);
		int contentnum = Integer.parseInt(request.getParameter("contentnum"));
		System.out.println("contentnum=>"+contentnum);
		
		List<RecipeVO> list = service.listall();
		System.out.println(list);  
		mav.addObject("list",list);
		pageMaker.setTotalCount(mapper.testcount());//전체 게시글 갯수 지정
		pageMaker.setPagenum(pagenum-1);	//현재 페이지를 페이지 객체에 지정, -1을 해야 쿼리에서 사용 가능
		pageMaker.setContentnum(contentnum); //한 페이지에 몇 개씩 게시글을 보여줄 것인
		pageMaker.setCurrentblock(pagenum); //현재 페이지 블록
		pageMaker.setLastblock(pageMaker.getTotalCount()); // 마지막 블록 번호를 전체 게시글 수를 통해 정한다.
		
		pageMaker.prevnext(pagenum);//현재 페이지 번호로 화살표를 나타낼 지 정한다
		pageMaker.setStartPage(pageMaker.getCurrentblock()); //시작 페이지를 페이지 블록번호로 정한다.
		pageMaker.setEndPage(pageMaker.getLastblock(), pageMaker.getCurrentblock()); 
		System.out.println(pageMaker);
		if(pageMaker.getPagenum()==1) {
		List<RecipeVO> testlist = mapper.testlist(pageMaker.getPagenum()*9, pageMaker.getPagenum()*9+pageMaker.getContentnum());
		//List<RecipeVO> test = new ArrayList<RecipeVO>();
		System.out.println(testlist);
		System.out.println(pageMaker.getContentnum());
		mav.addObject("testlist",testlist);
		mav.addObject("page",pageMaker);
		mav.setViewName("search");
		return mav;
		}else {
			List<RecipeVO> testlist = mapper.testlist((pageMaker.getPagenum()*10)+1, pageMaker.getPagenum()*10+pageMaker.getContentnum());	
			System.out.println(testlist);
			System.out.println(pageMaker.getContentnum());
			mav.addObject("testlist",testlist);
			mav.addObject("page",pageMaker);
			mav.setViewName("search");
			return mav;
		}
	}
/*	삭제 
	public String delete(RecipeVO recipe) {
		return "redirect:/recipe/list.do";
	}*/
	// 레시피을 작성하기 위한 뷰를 response할 메소드
	@RequestMapping(value="/recipe/recipe_write.do",method=RequestMethod.GET)
	public String write() {
		return "recipe_write";
	}
	//입력한 레시피 실제 db에 저장하는 메소드
	@RequestMapping(value="/recipe/recipe_write.do",method=RequestMethod.POST)
	public String insert(RecipeVO recipe,HttpSession session) throws Exception {
		System.out.println("***"+recipe);
 		
 		MultipartFile file = recipe.getMyphoto();
 		String path = WebUtils.getRealPath(session.getServletContext(), "/maeggiSeggi/WEB_INF/upload");
	 		String fileName = file.getOriginalFilename();
	 		service.insert(recipe);
	 		service.upload(file, path, fileName);
		return "redirect:/recipe/searchRecipe.do";
	}

	@RequestMapping(value="/recipe/ajax_searchRecipe.do",method=RequestMethod.GET,produces="application/json;charset=utf-8")	
	//ajax로 통신하면서 클라이언트에게 명시해줄 데이터를 produces에 붙인다.
	public @ResponseBody ArrayList<RecipeVO> categoryList(String category) {
		ArrayList<RecipeVO> recipeList = (ArrayList<RecipeVO>)service.recipeList(category);
		System.out.println("ajax 통신"+recipeList.size());
		return recipeList;
	}
	@RequestMapping(value="/recipe/levelRecipe.do", method=RequestMethod.GET)
	public ModelAndView levelView(String cook_levelb, String cook_leveln, String cook_levelh) {
		System.out.println(cook_levelb+"////////////////"+cook_leveln+"//////////////"+cook_levelh);
		System.out.println("====================================================================================");
		ModelAndView mav = new ModelAndView();
		List<RecipeVO> listb = service.levellist(cook_levelb);
		List<RecipeVO> listn = service.levellist(cook_leveln);
		List<RecipeVO> listh = service.levellist(cook_levelh);
		System.out.println("b:"+listb);
		System.out.println("n:"+listn);
		System.out.println("h:"+listh);
		mav.addObject("levellistb", listb);
		mav.addObject("levellistn", listn);
		mav.addObject("levellisth", listh);
		mav.setViewName("level");
		return mav;
	}
	@RequestMapping(value="recipe/ajax_levellist.do",method=RequestMethod.GET,produces="application/json;charset=utf-8")
	public @ResponseBody List<RecipeVO> recipeList(String cook_level){
		List<RecipeVO> recipelist = service.levellist(cook_level);
		System.out.println("----------------------"+recipelist.size());
		return recipelist;
	}
	
	@RequestMapping(value ="/recipe/addPlanner.do" , method=RequestMethod.GET)
	public ModelAndView moveTopopup(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		String recipe_id = req.getParameter("id");
		System.out.println("팝업창으로 전달하고 싶은 recipe_id: "+ recipe_id);
		RecipeVO mealinfo = service.moveTopopup(recipe_id);
		mav.addObject("mealinfo", mealinfo);
		mav.setViewName("add");
		System.out.println("컨트롤러를 거친 recipe_id: "+ mealinfo);
		return mav;
	}
	
	
	
}
