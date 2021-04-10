package com.hncompany.service;

import java.util.List;

import javax.inject.Inject;
 
import org.springframework.stereotype.Service;
 
import com.hncompany.dao.MemberDAO;
import com.hncompany.dto.CommentVO;
import com.hncompany.dto.MemberNoteVO;
import com.hncompany.dto.MemberVO;
import com.hncompany.dto.RouteVO;

@Service
public class MemberServiceImpl implements MemberService {
 
    @Inject
    private MemberDAO dao;
    
    @Override
    public Boolean idCheck(MemberVO vo) throws Exception {
       // TODO Auto-generated method stub
       return dao.idCheck(vo);
    }
    
    @Override
    public MemberVO selectMember(String vo) throws Exception {
 
        return dao.selectMember(vo);
    }
    
    @Override
    public void insertMember(MemberVO user) throws Exception {
 
      dao.insertUser(user);
    }
    
   
    @Override
    public void insertRoute(RouteVO a) throws Exception {
    	
    	dao.insertway(a);
    }
    
    
    @Override
    public MemberVO login(MemberVO user) throws Exception {
 
      return dao.login(user);
    }

    
	@Override
	public List<RouteVO> search(RouteVO s) throws Exception {
		// TODO Auto-generated method stub
		return dao.Route(s);
	}
	
	@Override
	public RouteVO tupleview(int cnt) throws Exception{
		
		return dao.view(cnt);
	}

// 게시판
	
	@Override
	public void insertNote(MemberNoteVO vo) throws Exception {
		dao.insertNote(vo);
	
	}

	@Override
	public List<MemberNoteVO> selectNoteList() throws Exception {
		return dao.selectNoteList();
	}

	@Override
	public MemberNoteVO selectNote(int cnt) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectNote(cnt);
	}
	@Override
	public void deleteNote(int cnt) throws Exception {
		dao.deleteNote(cnt);
	}

	@Override
	public void updateNote(MemberNoteVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.updateNote(vo);
	}

	@Override
	public List<CommentVO> selectComment(int cnt) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectComment(cnt);
	}

	@Override
	public void insertComment(CommentVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.insertComment(vo);
		
	}

	@Override
	public void deleteComment(CommentVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.deleteComment(vo);
	}

	@Override
	public List<RouteVO> mypageRouteList(String id) throws Exception {
		// TODO Auto-generated method stub
		return dao.mypageRouteList(id);
	}

	@Override
	public List<MemberNoteVO> mypageNoteList(String id) throws Exception {
		// TODO Auto-generated method stub
		return dao.mypageNoteList(id);
	}
	
	//마이페이지
	@Override
	public void mypageUpdate(MemberVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.mypageUpdate(vo);
	}

	@Override
	public void mypageDelete(String id) throws Exception {
		// TODO Auto-generated method stub
		dao.mypageDelete(id);
	}
	@Override
	   public void myrouteDel(String id) throws Exception {
	      // TODO Auto-generated method stub
	      dao.myrouteDel(id);
	}
	@Override
	public void findPw(MemberVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.findPw(vo);
	}

	@Override
	public void mypageUpdatepassword(MemberVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.mypageUpdatepassword(vo);
	}
    
}
