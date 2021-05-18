package product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import kr.jobtc.json.DBConn;

public class ProductDao {
	Connection conn;
	PreparedStatement ps;
	ResultSet rs;
	String sql;
	
	public ProductDao() {
		conn = new DBConn().getConn();
	}
	
	public List<ProductVo> select(Page page){
		List<ProductVo> list = new ArrayList<ProductVo>();
		int totSize = 0;
		try {
			// 검색어에 해당하는 전체 건수
			sql = "select count(serial) cnt from product where (pcode like ? or pname like ? ) ";
			sql += " and gubun in(" + page.getGubun() + ")";
			
			ps = conn.prepareStatement(sql);
			ps.setString(1, "%" + page.getFindStr() + "%");
			ps.setString(2, "%" + page.getFindStr() + "%");
			
			rs = ps.executeQuery();
			if(rs.next()) {
				totSize = rs.getInt("cnt");
			}
			
			page.setTotList(totSize);
			page.compute();
			// nowPage에 해당하는 목록 list 저장
			sql = "select * from ("
			    + "   select rownum rno, p.* from ("
				+ "       select serial, gubun, pcode, pname, ea, price, amt, mid, to_char(nal, 'rrrr-mm-dd') nal from product "
			    + "       where (pcode like ? or pname like ? ) ";
			
			sql += " and gubun in(" + page.getGubun() + ")";
			
			sql += "   order by serial desc )p"
				+  ") where rno between ? and ? ";


			ps = conn.prepareStatement(sql);
			ps.setString(1, "%" + page.getFindStr() + "%");
			ps.setString(2, "%" + page.getFindStr() + "%");
			ps.setInt(3, page.getStartNo());
			ps.setInt(4, page.getEndNo());
			
			rs = ps.executeQuery();
			while(rs.next()) {
				ProductVo vo = new ProductVo();
				vo.setSerial(rs.getInt("serial"));
				vo.setGubun(rs.getString("gubun"));
				vo.setNal(rs.getString("nal"));
				vo.setpCode(rs.getString("pcode"));
				vo.setpName(rs.getString("pname"));
				vo.setEa(rs.getInt("ea"));
				vo.setPrice(rs.getInt("price"));
				vo.setAmt(rs.getInt("amt"));
				vo.setMid(rs.getString("mid"));
				
				list.add(vo);
			}
			
			rs.close();
			ps.close();
			conn.close();
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return list;
	}
	
	
	public ProductVo selectOne(String serial) {
		ProductVo vo = new ProductVo();
		String sql = "select serial, gubun, pcode, pname, ea, price, amt, mid, " 
		           + " to_char(nal,'rrrr-mm-dd') nal from product where serial=?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, serial);
			
			rs = ps.executeQuery();
			if(rs.next()) {
				vo.setSerial(rs.getInt("serial"));
				vo.setGubun(rs.getString("gubun"));
				vo.setNal(rs.getString("nal"));
				vo.setpCode(rs.getString("pcode"));
				vo.setpName(rs.getString("pname"));
				vo.setEa(rs.getInt("ea"));
				vo.setPrice(rs.getInt("price"));
				vo.setAmt(rs.getInt("amt"));
				vo.setMid(rs.getString("mid"));
			}
			

			
			if(rs != null) rs.close();
			if(ps != null) ps.close();
			if(conn != null) conn.close();
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return vo;
	}
	
	public String delete(String serial) {
		String msg = "정상적으로 삭제됨";
		String sql = "delete from product where serial=? ";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, serial);
			
			int r = ps.executeUpdate();
			if(r<1) {
				msg = "삭제중 오류발생";
			}
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return msg;
	}
	
}




















