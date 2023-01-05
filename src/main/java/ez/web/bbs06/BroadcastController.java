package ez.web.bbs06;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import ez.web.domain.BoardDTO;
import ez.web.domain.PageDTO;
import ez.web.service.BroadcastService;

@Controller
public class BroadcastController {
	
	@Autowired
	private BroadcastService service;
	
	@RequestMapping(value="/bdregister.do", method=RequestMethod.GET)
	public String registerForm(HttpSession session, Model model) {
		if (session.getAttribute("admin") == null) {
			model.addAttribute("msg", "올바른 접근이 아닙니다");
			model.addAttribute("url", "login.do"); 
			return "/redir";
		}
		return "broadcast/register";
	}
	
	@RequestMapping(value="/bdregister.do", method=RequestMethod.POST)
	public String register(BoardDTO board) {
		
		service.register(board);
		
		return "redirect:/bdbroadcast.do";
	}
	
	@RequestMapping("/bdview.do")
	public String view(int bid, @ModelAttribute("pDto") PageDTO pDto, Model model) {
		BoardDTO board = service.view(bid, "view");
		model.addAttribute("board", board);
		return "broadcast/view"; //view.jsp
	}
	
	@RequestMapping(value="/bdmodify.do", method=RequestMethod.GET)
	public String modifyForm(int bid, @ModelAttribute("pDto") PageDTO pDto, HttpSession session, Model model) {
		if (session.getAttribute("admin") == null) {
			model.addAttribute("msg", "올바른 접근이 아닙니다");
			model.addAttribute("url", "login.do"); 
			return "/redir";
		}
		BoardDTO board = service.view(bid, "modify");
		model.addAttribute("board", board);
		
		return "broadcast/modify"; // modify.jsp
	}
	
	@RequestMapping(value="/bdmodify.do", method=RequestMethod.POST)
	public String modify(BoardDTO board, @ModelAttribute("pDto") PageDTO pDto, 
			RedirectAttributes reAttr) {		
		service.modify(board);
		
		reAttr.addAttribute("viewPage", pDto.getViewPage());
		reAttr.addAttribute("searchType", pDto.getSearchType());
		reAttr.addAttribute("keyWord", pDto.getKeyWord());
		
		return "redirect:/bdbroadcast.do";
	}
	
	@RequestMapping("/bdremove.do")
	public String remove(int bid, @ModelAttribute("pDto") PageDTO pDto, Model model,
			RedirectAttributes reAttr) {
		
		service.remove(bid);
		
		reAttr.addAttribute("viewPage", pDto.getViewPage());
		reAttr.addAttribute("searchType", pDto.getSearchType());
		reAttr.addAttribute("keyWord", pDto.getKeyWord());
		
		return "redirect:/bdbroadcast.do";
	}
	
	@RequestMapping("/bdbroadcast.do")
	public String list(@ModelAttribute("pDto") PageDTO pDto, Model model) {

		List<BoardDTO> list=service.getList(pDto);

		model.addAttribute("list", list);
		
		return "broadcast/broadcast";
	}
}
