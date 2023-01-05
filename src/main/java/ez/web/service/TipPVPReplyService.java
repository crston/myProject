package ez.web.service;

import ez.web.domain.ReplyDTO;
import ez.web.domain.ReplyPageDTO;

public interface TipPVPReplyService {
	public int register(ReplyDTO rDto);
	
	public ReplyDTO read(int rno);
	
	public int modify(ReplyDTO rDto);
	
	public int remove(int rno);
	
	public ReplyPageDTO getList(Integer bid, Integer viewPage);

	int replyCnt(Integer bid);
}
