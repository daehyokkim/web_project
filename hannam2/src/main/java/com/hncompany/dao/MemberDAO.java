package com.hncompany.dao;

import java.util.List;

import org.springframework.core.ExceptionDepthComparator;

import com.hncompany.dto.CommentVO;
import com.hncompany.dto.MemberNoteVO;
import com.hncompany.dto.MemberVO;
import com.hncompany.dto.RouteVO;
import com.mysql.cj.x.protobuf.MysqlxDatatypes.Scalar.String;

public interface MemberDAO {
    
    public MemberVO selectMember(String vo) throws Exception;
    
    public void insertUser(MemberVO user);
    public MemberVO login(MemberVO user) throws Exception;
    public List<RouteVO> Route(RouteVO s) throws Exception;
    public RouteVO view(int cnt) throws Exception;
    public boolean idCheck(MemberVO vo) throws Exception;

    //항로검색
    public void insertNote(MemberNoteVO vo) throws Exception;
    public List<MemberNoteVO> selectNoteList() throws Exception;
    public MemberNoteVO selectNote(int cnt) throws Exception;
   
    public void deleteNote(int cnt) throws Exception;
    public void updateNote(MemberNoteVO vo) throws Exception;
   
    //게시판
    public List<CommentVO> selectComment(int cnt) throws Exception;
    public void insertComment(CommentVO vo)throws Exception;
    public void deleteComment(CommentVO vo)throws Exception;
    
    //마이페이지
	public List<RouteVO> mypageRouteList(String id) throws Exception;
    public List<MemberNoteVO> mypageNoteList(String id)throws Exception;
    public void mypageUpdate(MemberVO vo)throws Exception;
    public void mypageDelete(String id)throws Exception;
    public void insertway(RouteVO a) throws Exception;
    public void myrouteDel(String id)throws Exception;

    public void findPw(MemberVO vo)throws Exception;
    public void mypageUpdatepassword(MemberVO vo)throws Exception;
}