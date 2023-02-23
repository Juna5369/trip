package com.project.trip.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.project.trip.vo.FAQVO;
import com.project.trip.vo.NoticeVO;
import com.project.trip.vo.ResQNAVO;

@Mapper
public interface CustomerCenterMapper {
	
	public void insertNotice(NoticeVO notice);
	public List<NoticeVO> getNoticeList();
	public NoticeVO getNoticeOne(@Param("not_no")int not_no);
	public List<NoticeVO> getNoticeListByTitle(@Param("not_title") String not_title);
	public List<NoticeVO> getNoticeListByContents(@Param("faq_contents") String faq_contents);
	
	public void insertQNA(ResQNAVO rq);
	public List<ResQNAVO> getResQNAList(@Param("id") String id);
	public ResQNAVO getResQNAOne(@Param("res_qna_no") int res_qna_no);
	
	public List<FAQVO> getFAQList();
	public List<FAQVO> getFAQListByTitle(@Param("faq_title") String faq_title);
	
}
