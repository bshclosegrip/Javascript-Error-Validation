package member;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.jobtc.json.DBConn;

@WebServlet(urlPatterns = "/member/member.do")
public class MemberServlet extends HttpServlet{
	Connection conn;
	MemberDao dao;
	RequestDispatcher disp; // 요청결과를 forward할때 사용됨.
	String job="search";
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		MemberVo mVo = null;
		String mId = "";
		String pwd = "";
		
		String url="/member/";
		dao = new MemberDao(conn);
		Page page = new Page();
		String tempNowPage = req.getParameter("nowPage");
		
		if(req.getParameter("job") != null) {
			job = req.getParameter("job");
		}
		
		if(req.getParameter("findStr") != null) {
			page.setFindStr(req.getParameter("findStr"));
		}
		
		if(tempNowPage == null || tempNowPage.equals("")) {
			page.setNowPage(1);
		}else {
			page.setNowPage(Integer.parseInt(tempNowPage));
		}

		switch(job) {
		case "search":
			url += "search.jsp";
			List<MemberVo> list = dao.select(page);
			req.setAttribute("list", list);
			req.setAttribute("page", page);
			break;
			
			
		case "modify":
			url += "modify.jsp";
			mId = req.getParameter("mid");
			mVo = dao.view(mId);
			req.setAttribute("vo", mVo);
			
			break;
			
		case "modifyR":
			url += "modify_result.jsp";
			break;
		case "deleteR":
			url += "search.jsp";
			
			mId = req.getParameter("mid");
			pwd = req.getParameter("pwd");
			mVo = new MemberVo();
			mVo.setMid(mId);
			mVo.setPwd(pwd);
			
			dao.delete(mVo);
			
			list = dao.select(page);
			req.setAttribute("page", page);
			req.setAttribute("list", list);
			
			break;
		case "view":
			url += "view.jsp";
			mId = req.getParameter("mid");
			mVo = dao.view(mId);
			req.setAttribute("vo", mVo);
			
			break;
		case "register":
			url += "register.jsp";
			break;
		case "registerR":
			url += "register_result.jsp";
			break;
		}
		
		disp = req.getRequestDispatcher(url);
		disp.include(req, resp);
		
	}

	@Override
	public void init() throws ServletException {
		conn = new DBConn().getConn();
	}

	
}
