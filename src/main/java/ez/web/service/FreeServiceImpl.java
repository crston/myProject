package ez.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ez.web.domain.BoardDTO;
import ez.web.domain.PageDTO;
import ez.web.mapper.FreeMapper;

@Service("FreeMapper")
public class FreeServiceImpl implements FreeService{

	@Autowired
	private FreeMapper mapper;
	
	@Override
	public List<BoardDTO> getList(PageDTO pDto) {
		
		int totalCnt = mapper.totalCnt(pDto);
		pDto.setValue(totalCnt, pDto.getCntPerPage());
		return mapper.getList(pDto);
	}

	@Override
	public void register(BoardDTO board) {
		mapper.insert(board);
	}

	@Override
//	public BoardDTO view(int bid) {
	public BoardDTO view(int bid, String mode) {
		if(mode.equals("view")) {
			mapper.hitAdd(bid);
		}
		return mapper.view(bid);
	}

	@Override
	public int remove(int bid) {
		return mapper.delete(bid);
	}

	@Override
	public int modify(BoardDTO board) {
		return mapper.update(board);
	}
	
	@Override
	public int totalCnt(PageDTO pDto) {	
		return mapper.totalCnt(pDto);
	}

}
