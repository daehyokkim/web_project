package com.hncompany.service;

import java.util.List;

import com.hncompany.dto.CommentVO;
import com.hncompany.dto.MemberNoteVO;
import com.hncompany.dto.MemberVO;
import com.hncompany.dto.RouteVO;
 
public interface MemberService {
    
    public MemberVO selectMember(String vo) throws Exception;
    public void insertMember(MemberVO user) throws Exception;
    public MemberVO login(MemberVO user) throws Exception;
    public List<RouteVO> search(RouteVO s) throws Exception;
    public RouteVO tupleview(int cnt) throws Exception;
    public void insertNote(MemberNoteVO vo) throws Exception;
    public List<MemberNoteVO> selectNoteList() throws Exception;
    public MemberNoteVO selectNote(int cnt) throws Exception;
    public void deleteNote(int cnt) throws Exception;
    public void updateNote(MemberNoteVO vo)throws Exception;
    
    public List<CommentVO> selectComment(int cnt) throws Exception;
    public void insertComment(CommentVO vo)throws Exception;
    public void deleteComment(CommentVO vo)throws Exception;

    public List<RouteVO> mypageRouteList(String id)throws Exception;
    public List<MemberNoteVO> mypageNoteList(String id)throws Exception;
    public void mypageUpdate(MemberVO vo)throws Exception;
    public void mypageDelete(String id)throws Exception;
	public Boolean idCheck(MemberVO vo)throws Exception;
	public void insertRoute(RouteVO a) throws Exception;
	public void myrouteDel(String id)throws Exception;
	
    public void findPw(MemberVO vo)throws Exception;
    public void mypageUpdatepassword(MemberVO vo)throws Exception;
}


