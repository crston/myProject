package ez.web.bbs06;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import ez.web.domain.UserVO;
import ez.web.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService service;
	private BCryptPasswordEncoder pwencoder = new BCryptPasswordEncoder();
	
	@RequestMapping(value="/register.do", method=RequestMethod.GET)
	public String registerForm() {
		return "/register/register";
	}
	
    /* 회원가입 */
	@RequestMapping(value="/register.do", method=RequestMethod.POST)
	public String register(UserVO vo, Model model) {
    	
		vo.setUserPw(pwencoder.encode(vo.getUserPw()));
		
        //회원가입 서비스 실행
		service.register(vo);
		
		model.addAttribute("msg", "회원가입을 완료하였습니다");
		model.addAttribute("url", "login.do"); 
		return "/redir";
	}
	
	@RequestMapping(value="/login.do", method=RequestMethod.GET)
	public String loginForm() {
		return "/login/login";
	}
	
	@RequestMapping(value="/login.do", method=RequestMethod.POST)
	public String login(@RequestParam Map<String, String> map, Model model, HttpSession session, UserVO vo) {
		try {
			if (map.get("userId") == null) {
				model.addAttribute("msg", "아이디 또는 비밀번호가 올바르지 않습니다");
				model.addAttribute("url", "login.do"); 
				return "/redir";
			}
			UserVO uservo = service.loginCheck(map);
			if (uservo != null && pwencoder.matches(vo.getUserPw(), uservo.getUserPw())) {
				session.setAttribute("user", uservo);
			} else {
				model.addAttribute("msg", "아이디 또는 비밀번호가 올바르지 않습니다");
				model.addAttribute("url", "login.do"); 
				return "/redir";
			}
			if (map.get("userId").equals("admin")) {
				session.setAttribute("admin", uservo);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("msg", "로그인 중 문제가 발생했습니다");
			model.addAttribute("url", "login.do"); 
			return "/redir";
		}
		return "/index";
	}
	
	@RequestMapping(value="/idcheck.do", method = RequestMethod.POST)
	@ResponseBody
	public int AjaxIdcheck(@RequestParam("id") String id){
		int cnt = service.idcheck(id);
		return cnt;
	}
	
	@RequestMapping(value="/namecheck.do", method = RequestMethod.POST)
	@ResponseBody
	public int AjaxNamecheck(@RequestParam("name") String name){
		int cnt = service.namecheck(name);
		return cnt;
	}
	
	@RequestMapping(value="/modify.do", method=RequestMethod.GET)
	public String modifyForm() {
		return "/modify/modify";
	}
	
	@RequestMapping(value="/modify.do", method=RequestMethod.POST)
	public String modify(UserVO vo, HttpSession session) {
		service.modify(vo);
		session.setAttribute("user", vo);
		return "/index";
	}
	@RequestMapping(value="/logout.do", method=RequestMethod.GET)
	public String logoutForm(HttpSession session) {
		service.logout(session);
		return "redirect:/index.do";
	}
}