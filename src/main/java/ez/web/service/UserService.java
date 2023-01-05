package ez.web.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import ez.web.domain.PageDTO;
import ez.web.domain.UserVO;

public interface UserService {
	// 회원 리스트 가져오기
	public List<UserVO> getList(PageDTO pDto);
	
	// 회원 등록
	public void register(UserVO uservo);
	
	public int idcheck(String userId);
	
	public int namecheck(String userName);
	
	// 회원 삭제
	public String remove(String userId);
	
	// 회원 수정
	public void modify(UserVO uservo);
	
	// 전체 회원 수
	public int totalCnt(PageDTO pDto);

	// 로그인 체크
	public UserVO loginCheck(Map<String, String> map);
    
	// 로그아웃
	public void logout(HttpSession session);
}
