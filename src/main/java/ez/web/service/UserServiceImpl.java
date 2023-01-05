package ez.web.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ez.web.domain.PageDTO;
import ez.web.domain.UserVO;
import ez.web.mapper.UserMapper;

@Service("UserMapper")
public class UserServiceImpl implements UserService{

	@Autowired
	private UserMapper mapper;
	
	@Override
	public List<UserVO> getList(PageDTO pDto) {
		
		int totalCnt = mapper.totalCnt(pDto);
		pDto.setValue(totalCnt, pDto.getCntPerPage());
		return mapper.getList(pDto);
	}

	@Override
	public void register(UserVO vo) {
        //회원가입 서비스 실행
		mapper.insert(vo);
	}

	@Override
	public int idcheck(String userId) {
		return mapper.idcheck(userId);
	}
	
	@Override
	public int namecheck(String userName) {
		return mapper.namecheck(userName);
	}
	
	@Override
	public String remove(String userId) {
		return mapper.delete(userId);
	}

	@Override
	public void modify(UserVO vo) {
		mapper.update(vo);
	}
	
	@Override
	public int totalCnt(PageDTO pDto) {	
		return mapper.totalCnt(pDto);
	}

	@Override
	public UserVO loginCheck(Map<String, String> map) {
		return mapper.logincheck(map); 
	}

	@Override
	public void logout(HttpSession session) {
		session.invalidate(); // 세션 초기화
	}
}
