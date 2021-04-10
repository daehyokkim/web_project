package com.hncompany.hannam;

import java.util.Locale;


import java.awt.Button;
import java.util.List;
 
import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.hncompany.dto.CommentVO;
import com.hncompany.dto.MemberNoteVO;
import com.hncompany.dto.MemberVO;
import com.hncompany.dto.RouteVO;
import com.hncompany.service.MemberService;
import com.mysql.cj.Session;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Inject
    private MemberService service;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	 
   
    
    @RequestMapping(value="/idCheck", method=RequestMethod.POST )
    public @ResponseBody String idCheck(MemberVO vo) throws Exception{
        
    if(vo.getId() != "") {
        Boolean check=service.idCheck(vo);
           if(check== true)
           {
              return "T"; 
           }
           
           else {
                 return "F"; 
           }
       
    }
    else {
           return "F"; 
       }
   }
	
	
	
	//Sign up
	@RequestMapping(value = "/insertUser", method = RequestMethod.POST)
	public String insertUser(MemberVO user, Locale locale, Model model) throws Exception{
	        
			service.insertMember(user);
	 
	        return "login";
	
	}
	
	//selectID
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String selectMember(MemberVO user, Model model) throws Exception{
			
			return "login";
	}		
	
	//sign in
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(MemberVO user, Locale locale, Model model,HttpSession session) throws Exception{
	
			MemberVO list = service.login(user);
			
			if(list != null ) {
				session.setAttribute("id", user.getId());
				String pw = list.getPw();
				session.setAttribute("pw", pw);
				return "main";
			}
			else
				return "login";  
	}
	   //logout
    @RequestMapping(value="/logout" )
    public String logoutUser(HttpSession session, Model model) throws Exception
    {
    	session.invalidate();
   
    	return "login";
    }
    
	
	//route_search
	@RequestMapping(value = "/route_menu1", method = RequestMethod.GET)
	public String route(RouteVO a, Model model) throws Exception{
		
			List<RouteVO> list = service.search(a);		
			model.addAttribute("routelist", list);
			
			return "route";
	}
	
	//route_search
	@RequestMapping(value="/result", method=RequestMethod.GET)
	public String result(@RequestParam("cnt") int cnt, Model model, HttpSession session) throws Exception {
		
		RouteVO tuple = service.tupleview(cnt);
		
		tuple.setId((String)session.getAttribute("id"));
		
		service.insertRoute(tuple);
		
		if(tuple.getmidcon()==null && tuple.getmidmenu()==null) {		
			model.addAttribute("routetuple", tuple);
			return "result1";
		}
		else {
			model.addAttribute("routetuple", tuple);
			return "result2";
		}
		
	}
	
	// 
	@RequestMapping(value="/introduce", method=RequestMethod.GET)
	public void introduce() {
	}
	@RequestMapping(value="/route", method=RequestMethod.GET)
	public void menu() {
	}
	@RequestMapping(value="/main", method=RequestMethod.GET)
	public void main() {
	}
	@RequestMapping(value="/signup", method=RequestMethod.GET)
	public void signup() {
	}
	@RequestMapping(value="/findpw", method=RequestMethod.GET)
	public void findpw() {
	}
	@RequestMapping(value="/writenote", method=RequestMethod.GET)
	public void writenote() {
		
	}
	@RequestMapping(value="/updateNote" , method = RequestMethod.GET)
	public void updateNote(){
	}
	
	 
    //게시글 입력
	@RequestMapping(value="/insertNote", method = RequestMethod.POST)
	public String insert_note(MemberNoteVO vo, Model model, HttpSession session) throws Exception{
		if(session.getAttribute("id")!= null)
		{
			vo.setid((String)session.getAttribute("id"));
			service.insertNote(vo);
			List<MemberNoteVO> data = service.selectNoteList();
			model.addAttribute("noteList",data);
		}
			return "note";
	}
	
	//게시글 목록
	@RequestMapping(value="/note",method = RequestMethod.GET)
	public String note(Model model,HttpSession session) throws Exception
	{
		List<MemberNoteVO> data = service.selectNoteList();
		model.addAttribute("noteList",data);
		return "note";
	}

	//게시글 내용
	@RequestMapping(value="/noteMain",method = RequestMethod.GET)
	public String notemaim(MemberNoteVO vo, Model model,HttpSession session,@RequestParam("cnt")int cnt)throws Exception
	{
		List<CommentVO> list = service.selectComment(cnt); //���
		MemberNoteVO Note =service.selectNote(cnt); //���ñ�
		model.addAttribute("comment",list);
		model.addAttribute("membernote",Note);
		model.addAttribute("user",session.getAttribute("id"));
		return "notemain";
	}
	
	//글 삭제
	@RequestMapping(value="/deleteNote",method = RequestMethod.GET)
	public String deleteNote(Model model,@RequestParam("cnt")int cnt,HttpSession session)throws Exception
	{
		String user =(String)session.getAttribute("id");
		String author = (String)service.selectNote(cnt).getId();
		 
		if(user.equals(author)) {
			
			service.deleteNote(cnt);
			List<MemberNoteVO> data = service.selectNoteList();
			model.addAttribute("noteList",data);
			return "note";
				
		}
		else {
			List<CommentVO> list = service.selectComment(cnt);
			model.addAttribute("comment",list);
			MemberNoteVO Note =service.selectNote(cnt);
			model.addAttribute("membernote",Note);
			model.addAttribute("user",session.getAttribute("id"));
			model.addAttribute("message", "No equals");
			return "notemain";
		}
		
	}
	
	//글 수정
	@RequestMapping(value="/updateNote" , method = RequestMethod.POST)
	public String updateNote(MemberNoteVO vo,Model model) throws Exception
	{
		service.updateNote(vo);
		List<MemberNoteVO> data = service.selectNoteList();
		model.addAttribute("noteList",data);
		return "note";
	}
		
	@RequestMapping(value="/updatePage",method = RequestMethod.GET)
	public String updatePage(Model model,@RequestParam("cnt")int cnt,HttpSession session)throws Exception
	{
		String user =(String)session.getAttribute("id");
		String author = (String)service.selectNote(cnt).getId();
		if(user.equals(author)) {

			MemberNoteVO note = new MemberNoteVO();
			note=service.selectNote(cnt);
			model.addAttribute("note", note);
			return "updatenote";
		}
		else {
			List<CommentVO> list = service.selectComment(cnt);
			model.addAttribute("comment",list);
			MemberNoteVO Note =service.selectNote(cnt);
			model.addAttribute("membernote",Note);
			model.addAttribute("user",session.getAttribute("id"));
			model.addAttribute("message", "No equals");
			return "notemain";
		}
		
	}
	
	@RequestMapping(value="/writenote")
	public void writeNote(){	}	
	
	//댓글
	@RequestMapping(value="/comment",method = RequestMethod.GET)
	public String comment(CommentVO vo,Model model,HttpSession session) throws Exception
	{
		service.insertComment(vo);
		
		List<CommentVO> list = service.selectComment(vo.getcnt());
		model.addAttribute("comment",list);
		MemberNoteVO Note =service.selectNote(vo.getcnt());
		model.addAttribute("membernote",Note);
		model.addAttribute("user",session.getAttribute("id"));
		
		return "notemain";
	}
	//댓글 삭제
	@RequestMapping(value = "/deleteComment",method = RequestMethod.GET)
	public String commentdel(CommentVO vo,Model model,HttpSession session)throws Exception
	{	
		String user= vo.getId();
		String ses=(String)session.getAttribute("id");
		
		if(user.equals(ses))
		{
			service.deleteComment(vo);
			
		}
		else
		{
			
			model.addAttribute("message", "No equals");
		}
		
		List<CommentVO> list = service.selectComment(vo.getcnt());
		model.addAttribute("comment",list);
		
		MemberNoteVO Note =service.selectNote(vo.getcnt());
		model.addAttribute("membernote",Note);
		model.addAttribute("user",session.getAttribute("id"));
		return "notemain";
	}
	

	@RequestMapping(value = "/mypage" ,method = RequestMethod.GET)
		public String MyPage( Model model, HttpSession session )throws Exception
		{
			String id = (String) session.getAttribute("id");
			List<RouteVO> RouteList =service.mypageRouteList(id);
			List<MemberNoteVO> TitleList= service.mypageNoteList(id);
			
			model.addAttribute("User", id);
			model.addAttribute("routelist", RouteList);
			model.addAttribute("titlelist", TitleList);
			System.out.println();
			return "mypage";
		}
		
		@RequestMapping(value = "/mypageDel", method = RequestMethod.GET)
		public String mypageDel(HttpSession session)throws Exception
		{
			
			service.mypageDelete((String)session.getAttribute("id"));
	    	session.setAttribute("id",null); //���� ����
			return "home";
		}
		@RequestMapping(value = "/mypageUpdate", method=RequestMethod.GET)
		public String mypageUpdatePage(Model model,HttpSession session)throws Exception
		{
			MemberVO user = service.selectMember((String)session.getAttribute("id"));
			model.addAttribute("User", user);
			return "updatepage";
		}
		
		
		@RequestMapping(value = "/mySeaway",method =RequestMethod.GET)
		public String myseaway(HttpSession session, Model model) throws Exception
		{
			String id = (String) session.getAttribute("id");
			List<RouteVO> RouteList =service.mypageRouteList(id);
			model.addAttribute("routelist", RouteList);
			return "myseaway";
		}
		
		@RequestMapping(value = "/myContent",method =RequestMethod.GET)
		public String mycontent(HttpSession session, Model model)throws Exception
		{		
			String id = (String) session.getAttribute("id");
			List<MemberNoteVO> TitleList= service.mypageNoteList(id);
			model.addAttribute("titlelist", TitleList);
			
			return "mycontent";
		}
		
		@RequestMapping(value = "/myrouteDel", method =RequestMethod.GET )
		   public String myrouteDel(HttpSession session, Model model) throws Exception
		   {
		   
		      service.myrouteDel((String)session.getAttribute("id"));
		      
		      
		      String id = (String) session.getAttribute("id");
		      List<RouteVO> RouteList =service.mypageRouteList(id);
		      List<MemberNoteVO> TitleList= service.mypageNoteList(id);
		      
		      model.addAttribute("User", id);
		      model.addAttribute("routelist", RouteList);
		      model.addAttribute("titlelist", TitleList);
		      System.out.println();
		      return "mypage";
		   }
		@RequestMapping(value="/mypageupdate", method =RequestMethod.POST)
		public @ResponseBody String MypageUpdate(MemberVO vo,HttpSession session,Model model) throws Exception
		{
			String User_pw=(String) session.getAttribute("pw");
			
			if(vo.getPw() == null) {
				service.mypageUpdate(vo);
				System.out.print("test1");
				return "T";}
		
			else if(vo.getPw().equals(User_pw)) {
			
				vo.setPw((String)vo.getPw2());

				System.out.print("test2");
				service.mypageUpdatepassword(vo);
				return "T";
			}
			

			System.out.print("falis");
			return "F";


		}


		@RequestMapping(value="/find", method=RequestMethod.POST)
		public String findpw(MemberVO vo, HttpSession session, Model model)throws Exception
		{
			service.findPw(vo);
			return "login";
		}

}

