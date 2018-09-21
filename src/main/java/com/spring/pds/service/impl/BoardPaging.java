package com.spring.pds.service.impl;

import com.spring.pds.vo.PdsVo;

public class BoardPaging {
	//field
	private int totalCount; // 전체 Row수
	private int nowPage; // 현재 페이지번호
	private int preNowPage; //
	private int nextNowPage;//
	private int pageCount; // 1페이지에 보여지는 게시글 수

	private int pageTotalCount; // 한 화면에 보여줄 총 페이지번호 수
	private int pageGrpNum; // 한 화면에 보여지고 있는 페이지 그룹의 페이지 숫자

	private int startPageNum; // 시작페이지 숫자
	private int endPageNum; // 끝 페이지 숫자

	private int totalRecordPageCount; // 총 row 갯수를 가지고 표현가능한 총 페이지수

	private boolean isshowPagePrev = true;
	private boolean isshowPageNext = true;

	// 기본 생성자
	public BoardPaging() {}
	
	// constructor
	public BoardPaging(int nowpage, int pagecount, int totalcount, int pagetotalcount, int pagegrpnum) {
		this.nowPage = nowpage;
		this.pageCount = pagecount;
		this.totalCount = totalcount;
		this.pageTotalCount = pagetotalcount;
		this.pageGrpNum = pagegrpnum;

	}

	// getter/setter
	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getNowPage() {
		return nowPage;
	}

	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}

	public int getPreNowPage() {
		return preNowPage;
	}

	public void setPreNowPage(int preNowPage) {
		this.preNowPage = preNowPage;
	}

	public int getNextNowPage() {
		return nextNowPage;
	}

	public void setNextNowPage(int nextNowPage) {
		this.nextNowPage = nextNowPage;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getPageTotalCount() {
		return pageTotalCount;
	}

	public void setPageTotalCount(int pageTotalCount) {
		this.pageTotalCount = pageTotalCount;
	}

	public int getPageGrpNum() {
		return pageGrpNum;
	}

	public void setPageGrpNum(int pageGrpNum) {
		this.pageGrpNum = pageGrpNum;
	}

	public int getStartPageNum() {
		return startPageNum;
	}

	public void setStartPageNum(int startPageNum) {
		this.startPageNum = startPageNum;
	}

	public int getEndPageNum() {
		return endPageNum;
	}

	public void setEndPageNum(int endPageNum) {
		this.endPageNum = endPageNum;
	}

	public int getTotalRecordPageCount() {
		return totalRecordPageCount;
	}

	public void setTotalRecordPageCount(int totalRecordPageCount) {
		this.totalRecordPageCount = totalRecordPageCount;
	}

	public boolean isIsshowPagePrev() {
		return isshowPagePrev;
	}

	public void setIsshowPagePrev(boolean isshowPagePrev) {
		this.isshowPagePrev = isshowPagePrev;
	}

	public boolean isIsshowPageNext() {
		return isshowPageNext;
	}

	public void setIsshowPageNext(boolean isshowPageNext) {
		this.isshowPageNext = isshowPageNext;
	}

	// method
	// pagePdsVo: paging.jspf
	public PdsVo getPdsPagingInfo() 
	{
		PdsVo vo = new PdsVo();
		
		// ex) 게시글(totalCount) 105개, (pageCount)10개씩 출력하면 페이지 수는 11
		this.totalRecordPageCount = 
				(int)Math.ceil((double)totalCount/(double)pageCount);
		
		// 시작 페이지 번호
		// pageTotalCount : 10 (한줄에 10개 출력)
		this.startPageNum = (pageGrpNum - 1) * pageTotalCount + 1;
		
		// 끝 페이지 번호
		this.endPageNum =
				totalRecordPageCount < (pageGrpNum * pageTotalCount) ?
				totalRecordPageCount : (pageGrpNum * pageTotalCount);
				// 조건 ? true이면출력 : false이면출력
		
		// [이전 10개] [다음 10개] 출력 여부
		if(startPageNum == 1)
		{
			isshowPagePrev = false;
		}
		if(endPageNum >= totalRecordPageCount)
		{
			isshowPageNext = false;
		}
		
		this.preNowPage  = startPageNum - 1;
		this.nextNowPage = endPageNum + 1;
		// 페이징 연산 완료

		//값 저장
		vo.setNowpage(this.nowPage);
		vo.setPrevnowpage(this.preNowPage);
		vo.setNextnowpage(this.nextNowPage);
		
		vo.setTotalcount(this.totalCount);
		vo.setTotalpagecount(this.pageTotalCount);
		
		
		vo.setPagestartnum(this.startPageNum);
		vo.setPageendnum(this.endPageNum);
		
		vo.setPagecount(this.pageCount);
		vo.setPagegrpnum(this.pageGrpNum);
		
		vo.setIsshowpageprev(this.isshowPagePrev);
		vo.setIsshowpagenext(this.isshowPageNext);
		
		return vo;
	}

}
