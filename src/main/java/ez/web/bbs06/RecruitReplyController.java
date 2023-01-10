package ez.web.bbs06;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import ez.web.domain.ReplyDTO;
import ez.web.domain.ReplyPageDTO;
import ez.web.service.RecruitReplyService;

@RestController // @Controller + @ResponseBody
@RequestMapping("/recruitreplies")
public class RecruitReplyController {
	
	//ResponseEntity 클래스는 리턴시에 Http 상태코드를 데이터와 함께 반환해주는 클래스
	// 상태코드, 헤더값을 모두 frontEnd에 전송해준다.
	//@PathVariable url에서 가변인자에 해당하는 값을 수집
		
	@Autowired
	private RecruitReplyService service;
	
	// 댓글 조회
	@GetMapping(value = "/{rno}",
			produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<ReplyDTO> get(@PathVariable("rno") int rno){
		ReplyDTO rDto = service.read(rno);
		return new ResponseEntity<ReplyDTO>(rDto, HttpStatus.OK);
	}
	
	// 댓글 추가
	// consumes : 들어오는 데이터 타입을 정의하는 속성
	// produces : 반환하는 데이터 타입을 정의하는 속성
	@PostMapping(value="/new",
			consumes = MediaType.APPLICATION_JSON_UTF8_VALUE,
			produces = MediaType.TEXT_PLAIN_VALUE)
	public ResponseEntity<String> create(@RequestBody ReplyDTO rDto){
		
		int resultCnt = service.register(rDto);
		
		return resultCnt == 1 ? new ResponseEntity<String>("success", HttpStatus.OK) 
			: new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	// 삭제
	@DeleteMapping(value = "/{rno}")
	public ResponseEntity<String> remove(@PathVariable("rno") int rno){		
		
		int resultCnt = service.remove(rno);
		
		return resultCnt == 1 ? new ResponseEntity<String>("success", HttpStatus.OK) 
			: new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	// 수정
	@RequestMapping(value = "/{rno}", method= {RequestMethod.PUT, RequestMethod.PATCH},
			produces = MediaType.TEXT_PLAIN_VALUE)
	public ResponseEntity<String> modify(@PathVariable("rno") int rno, @RequestBody ReplyDTO rDto){		
		
		rDto.setRno(rno);
		int resultCnt = service.modify(rDto);	
		
		return resultCnt == 1 ? new ResponseEntity<String>("success", HttpStatus.OK) 
				: new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@GetMapping(value="/rList/{bid}/{viewPage}")
	public ResponseEntity<ReplyPageDTO> getList(@PathVariable("bid") Integer bid,
			@PathVariable("viewPage") Integer viewPage){
		ReplyPageDTO repDto = service.getList(bid, viewPage);
		
		return new ResponseEntity<ReplyPageDTO>(repDto, HttpStatus.OK);
	}
}

