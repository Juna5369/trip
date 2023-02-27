package com.project.trip.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.project.trip.vo.FAQVO;
import com.project.trip.vo.NoticeVO;
import com.project.trip.vo.ResQNAVO;
import com.project.trip.vo.ResReplyVO;

@Mapper
public interface CustomerCenterMapper {
	
	public void insertNotice(NoticeVO notice);
	public List<NoticeVO> getNoticeList();
	public NoticeVO getNoticeOne(@Param("not_no")int not_no);
	public List<NoticeVO> getNoticeListByTitle(@Param("not_title") String not_title);
	public void updateNotice(NoticeVO notice);
	public void deleteNotice(@Param("not_no") int not_no);
	
	public void insertResQNA(ResQNAVO rq);
	public List<ResQNAVO> getResQNAList(@Param("id") String id);
	public List<ResQNAVO> getResQNAListForAdmin();
	public ResQNAVO getResQNAOne(@Param("res_qna_no") int res_qna_no);
	public void updateResQNA(ResQNAVO rq);
	public void updateResQNAEan(ResQNAVO rq);
	public void deleteResQNA(@Param("res_qna_no") int res_qna_no);
	
	public void insertResReply(ResReplyVO rep);
	public ResReplyVO getResReplyOne(@Param("res_qna_no") int res_qna_no);
	public void updateResReply(ResReplyVO rep);
	public void deleteResReply(@Param("res_reply_no") int res_reply_no);
	
	public void insertFAQ(FAQVO faq);
	public List<FAQVO> getFAQList();
	public List<FAQVO> getFAQListByTitle(@Param("faq_title") String faq_title);
	public void updateFAQ(FAQVO faq);
	public void deleteFAQ(@Param("faq_no") int faq_no);
	
}
