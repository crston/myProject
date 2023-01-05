package ez.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ez.web.domain.ReplyDTO;
import ez.web.domain.ReplyPageDTO;
import ez.web.mapper.TipPVPReplyMapper;

@Service("TipPVPReplyMapper")
public class TipPVPReplyServieImpl implements TipPVPReplyService{

	@Autowired
	private TipPVPReplyMapper mapper;
	
	@Override
	public int register(ReplyDTO rDto) {
		
		return mapper.insert(rDto);
	}

	@Override
	public ReplyDTO read(int ron) {
		return mapper.select(ron);
	}

	@Override
	public int modify(ReplyDTO rDto) {
		return mapper.update(rDto);
	}

	@Override
	public int remove(int rno) {
		return mapper.delete(rno);
	}
	
//	@Override
//	public List<ReplyDTO> getList(Integer bid) {		
//		return mapper.getListByBid(bid);
//	}
	
	@Override
	public ReplyPageDTO getList(Integer bid, Integer viewPage) {
		// 댓글 수 구하기
		int replyCnt = mapper.replyCnt(bid);
		ReplyPageDTO repDto = new ReplyPageDTO();
		// viewPage가 바뀔때마다 새롭게 셋팅
		repDto.setViewPage(viewPage);
		// startIndex가 새롭게 셋팅
		repDto.setValue(replyCnt);
		
		List<ReplyDTO> list = mapper.getListByBid(bid, repDto.getStartIndex(), 
				repDto.getCntPerPage());
		
		repDto.setList(list);
		
		return repDto;
	}

	@Override
	public int replyCnt(Integer bid) {		
		return mapper.replyCnt(bid);
	}
	
	
	
}
