package member;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.util.Collection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import kr.jobtc.json.DBConn;

@WebServlet(urlPatterns = "/upload.do")
@MultipartConfig(
		location = "C:/Temp/",
		maxFileSize = 1024000000L,
		maxRequestSize = -1,
		fileSizeThreshold = -1
)
public class FileUpload extends HttpServlet{
	Connection conn;
	MemberDao dao;
	RequestDispatcher disp;
	
	final static String saveDir = "C:\\pwg\\workspace\\WebStudy\\WebContent\\member\\picture\\";
	
	@Override
	public void init() throws ServletException {
		conn = new DBConn().getConn();
		System.out.println("FileUpload.init...........");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int r = 0;
		String flag = "";
		
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		
		String contentType = req.getContentType();
		System.out.println("contentType : " + contentType);
		
		if(contentType == null || !contentType.toLowerCase().startsWith("multipart/")) {
			System.out.println("content type이 틀림...");
			return;
		}
		
		dao = new MemberDao(conn);
		MemberVo vo = new MemberVo();
		Page page = new Page();
		
		
		Collection<Part> parts = req.getParts();
		for(Part p : parts) {
			if(p.getHeader("Content-Disposition").contains("filename=")) {
				String fileName = p.getSubmittedFileName();
				
				vo.setPhoto(fileName);
				
				if(p.getSize()>0) {
					p.write(saveDir + fileName);
					p.delete();
				}
				
			}else { // file tag가 아닌 경우
				String tagName = p.getName();
				String value = req.getParameter(tagName).trim();
				switch(tagName) {
				case "mid" :
					vo.setMid(value);
					break;
				case "irum" :
					vo.setIrum(value);
					break;
				case "pwd" :
					vo.setPwd(value);
					break;
				case "phone" :
					vo.setPhone(value);
					break;
				case "post" :
					vo.setPost(value);
					break;
				case "address" :
					vo.setAddress(value);
					break;
				case "address2" :
					vo.setAddress2(value);
					break;
				case "account" :
					vo.setAccount(value);
					break;
				case "host" :
					vo.setHost(value);
					break;

				case "findStr" :
					page.setFindStr(value);
					break;
				case "nowPage" :
					page.setNowPage(Integer.parseInt(value));
					break;
				}
			
			}// end of if
		}// end of for
		
		flag =  req.getParameter("flag");
		
		if(flag.equals("insert")) {
			r = dao.insert(vo);
		}else if(flag.equals("update")) {
			r = dao.update(vo);
		}
		
		req.setAttribute("page", page);
		
		disp = req.getRequestDispatcher("./member/search.jsp");
		disp.include(req, resp);
		
	}
}














