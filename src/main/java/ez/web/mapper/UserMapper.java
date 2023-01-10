package ez.web.mapper;

import java.util.List;
import java.util.Map;

import ez.web.domain.PageDTO;
import ez.web.domain.UserVO;

//Persistent Layer(영속성 계층)
public interface UserMapper {
	// 회원 리스트 가져오기
	public List<UserVO> getList(PageDTO pDto);
	
	// 회원 등록
	public void insert(UserVO uservo);
	
	public int idcheck(String userId);
	
	public int namecheck(String userName);	
	
	// 회원 삭제
	public String delete(String userId);
	
	// 회원 수정
	public void update(UserVO uservo);
	
	// 전체 게시글 수
	public int totalCnt(PageDTO pDto);
	
	// 로그인 체크
	public UserVO logincheck(Map<String, String> map);
	
}
