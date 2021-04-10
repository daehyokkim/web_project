package com.hncompany.dao;

import java.util.List;

import javax.inject.Inject;
 
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.hncompany.dto.CommentVO;
import com.hncompany.dto.MemberNoteVO;
import com.hncompany.dto.MemberVO;
import com.hncompany.dto.RouteVO;

import jdk.nashorn.internal.objects.annotations.Getter;


@Repository
public class MemberDAOImpl implements MemberDAO {
 
    @Inject
    private SqlSession sqlSession; 
    private static final String Namespace = "com.hncompany.mapper.MemberMapper";
    
    //로그인
    @Override
    public boolean idCheck(MemberVO vo) throws Exception {
       // TODO Auto-generated method stub
    	boolean check = false;
    	MemberVO user = sqlSession.selectOne(Namespace+".idCheck", vo);
    	if(user == null){
    		check = true;

       }
       
       return check;
    }
    

    @Override
    public MemberVO selectMember(String vo) throws Exception {	
        return sqlSession.selectOne(Namespace+".selectMember",vo);
    }

	@Override
	public void insertUser(MemberVO user) {
		// TODO Auto-generated method stub
		sqlSession.insert(Namespace+".insertMember", user); 
	}
	
	@Override
	public MemberVO login(MemberVO user) throws Exception{
		// TODO Auto-generated method stub
		return sqlSession.selectOne(Namespace+".login", user); 
	}
	
	//route dao
	@Override
	public List<RouteVO> Route(RouteVO s) throws Exception{
		// TODO Auto-generated method stub
		
		if (s.getarmenu().equals("all")) {
			return sqlSession.selectList(Namespace+".way1", s); 
		}
		else {
			return sqlSession.selectList(Namespace+".way2", s); 
		}
	}
	//result dao
	@Override
	public RouteVO view(int cnt) throws Exception{
		return sqlSession.selectOne(Namespace+".cnt", cnt);
	}
	
	//myroute dao
	@Override
	public void insertway(RouteVO a) throws Exception{
		RouteVO ch = sqlSession.selectOne(Namespace+".ch", a);
		if(ch == null)
		{
			sqlSession.insert(Namespace+".a", a);	
		}
	}
	
	//게시글
	@Override
	public void insertNote(MemberNoteVO vo) throws Exception {
		int num =sqlSession.selectOne(Namespace+".N_cnt");
		if(num == 0) {
			vo.setcnt(1);
		}
		else
		{
			vo.setcnt(num+1);
		}

		sqlSession.insert(Namespace+".insertNote", vo);
	}
	//게시글 리스트
	@Override
	public List<MemberNoteVO> selectNoteList() throws Exception {
		return sqlSession.selectList(Namespace+".selectNoteList");
		
	}
	// 게시글 내용
	@Override
	public MemberNoteVO selectNote(int cnt) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.update(Namespace+".noteLookup", cnt);
		return sqlSession.selectOne(Namespace+".selectNote", cnt); //�˻�
	}
	//글 삭제
	@Override
	public void deleteNote(int cnt) throws Exception {
		sqlSession.delete(Namespace+".deleteNote", cnt);
		sqlSession.update(Namespace+".deleteUpdate", cnt);
		// TODO Auto-generated method stub	
	}

	//글 수정
	@Override
	public void updateNote(MemberNoteVO vo) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.update(Namespace+".updateNote", vo);
	}

	//댓글
	@Override
	public List<CommentVO> selectComment(int cnt) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(Namespace+".commentList", cnt);
	}

	//댓글 쓰기
	@Override
	public void insertComment(CommentVO vo) throws Exception {
		// TODO Auto-generated method stub
		int num =sqlSession.selectOne(Namespace+".commentCnt",+vo.getcnt());
		if(num == 0) {
			vo.setucnt(1);		
			}
		else
		{
			vo.setucnt(num+1);
		}

		sqlSession.insert(Namespace+".commentAdd", vo);
	}

	//댓글 삭제
	@Override
	public void deleteComment(CommentVO vo) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.delete(Namespace+".commentDel", vo);
		sqlSession.update(Namespace+".commentUp", vo);
		
	}

	//마이페이지 련
	@Override
	public List<RouteVO> mypageRouteList(String id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(Namespace+".mypageRoute", id);
	}

	@Override
	public List<MemberNoteVO> mypageNoteList(String id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(Namespace+".mypageTitle", id);
	}

	@Override
	public void mypageUpdate(MemberVO vo) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.update(Namespace + ".mypageUpdate", vo);
	}

	//ȸ��Ż��
	@Override
	public void mypageDelete(String id) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.delete(Namespace+".mypageUserout", id);	
	}
	
	   @Override
	   public void myrouteDel(String id) throws Exception {
	      // TODO Auto-generated method stub
	      sqlSession.delete(Namespace + ".myrouteDel", id);
	   }
		@Override
		public void findPw(MemberVO vo) throws Exception {
			// TODO Auto-generated method stub
			sqlSession.update(Namespace + ".findPw", vo);
		}

		@Override
		public void mypageUpdatepassword(MemberVO vo) throws Exception {
			// TODO Auto-generated method stub
			sqlSession.update(Namespace + ".mypageUpdatepw", vo);
			
		}
}
