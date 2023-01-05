package ez.web.domain;

import java.util.List;

import lombok.Data;

@Data
public class ReplyPageDTO {
	private int totalCnt; // 특정 게시글에 대한 댓글 전체개수
	private int viewPage = 1;
	private int blockSize = 5;
	private int blockNum;
	private int blockStart;
	private int blockEnd;
	private int prevPage;
	private int nextPage;
	public int getTotalCnt() {
		return totalCnt;
	}

	public void setTotalCnt(int totalCnt) {
		this.totalCnt = totalCnt;
	}

	public int getViewPage() {
		return viewPage;
	}

	@Override
	public String toString() {
		return "ReplyPageDTO [totalCnt=" + totalCnt + ", viewPage=" + viewPage + ", blockSize=" + blockSize
				+ ", blockNum=" + blockNum + ", blockStart=" + blockStart + ", blockEnd=" + blockEnd + ", prevPage="
				+ prevPage + ", nextPage=" + nextPage + ", totalPage=" + totalPage + ", startIndex=" + startIndex
				+ ", cntPerPage=" + cntPerPage + ", list=" + list + "]";
	}

	public void setViewPage(int viewPage) {
		this.viewPage = viewPage;
	}

	public int getBlockSize() {
		return blockSize;
	}

	public void setBlockSize(int blockSize) {
		this.blockSize = blockSize;
	}

	public int getBlockNum() {
		return blockNum;
	}

	public void setBlockNum(int blockNum) {
		this.blockNum = blockNum;
	}

	public int getBlockStart() {
		return blockStart;
	}

	public void setBlockStart(int blockStart) {
		this.blockStart = blockStart;
	}

	public int getBlockEnd() {
		return blockEnd;
	}

	public void setBlockEnd(int blockEnd) {
		this.blockEnd = blockEnd;
	}

	public int getPrevPage() {
		return prevPage;
	}

	public void setPrevPage(int prevPage) {
		this.prevPage = prevPage;
	}

	public int getNextPage() {
		return nextPage;
	}

	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getStartIndex() {
		return startIndex;
	}

	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}

	public int getCntPerPage() {
		return cntPerPage;
	}

	public void setCntPerPage(int cntPerPage) {
		this.cntPerPage = cntPerPage;
	}

	public List<ReplyDTO> getList() {
		return list;
	}

	public void setList(List<ReplyDTO> list) {
		this.list = list;
	}

	private int totalPage;
	
	private int startIndex;
	private int cntPerPage = 5;
	
	private List<ReplyDTO> list;
		
	
	public ReplyPageDTO() {}
	
//	public void setValue(int totalCnt, int cntPerPage) {
	public void setValue(int totalCnt) {
		// 전체 페이지 수
		this.totalPage = (int)Math.ceil((double)totalCnt/cntPerPage);
		// 페이지별 시작 인덱스 : 0, 10, 20, 30,....
		this.startIndex = (viewPage-1)*cntPerPage;
		// 현재 페이지의 블럭 위치 : 0부터 시작
		this.blockNum = (viewPage-1)/blockSize;
		
		// 블럭의 시작값 : 1, 6, 11,...
		this.blockStart = (blockSize*blockNum)+1;		
		// 블럭의 마지막값 : 5, 10, 15,...
		this.blockEnd = blockStart + (blockSize - 1);
		if(blockEnd > totalPage) blockEnd = totalPage;
		
		// 이전페이지
		this.prevPage = blockStart - 1;
		// 다음페이지
		this.nextPage = blockEnd + 1;
		// 전체페이지 수를 초과할 수 없도록
		if(nextPage > totalPage) nextPage = totalPage;
	}
	
	
}
