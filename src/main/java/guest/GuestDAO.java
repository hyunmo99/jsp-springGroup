package guest;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.GetConn;

public class GuestDAO {
		private Connection conn = GetConn.getConn();
		private PreparedStatement pstmt = null;
		private ResultSet rs = null;
		
		String sql = "";
		GuestVO vo = null;
		
		public void pstmtClose() {
			if(pstmt!=null) {
				try {
					pstmt.close();
				} catch (SQLException e) {}
			}
		}
		public void rsClose() {
			if(rs!=null) {
				try {
					rs.close();
				} catch (SQLException e) {}
				finally {
					pstmtClose();
				}
			}
		}
		
		//전체 게시글 가져오기
		public List<GuestVO> getGuestList() {
			List<GuestVO> vos = new ArrayList<>();
			try {
				sql="select *from guest order by idx desc";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					GuestVO vo = new GuestVO();
					vo.setIdx(rs.getInt("idx"));
					vo.setName(rs.getString("name"));
					vo.setContent(rs.getString("Content"));
					vo.setEmail(rs.getString("email"));
					vo.setHomePage(rs.getString("homePage"));
					vo.setvDate(rs.getString("vDate"));
					vo.setHostIp(rs.getString("hostIp"));
					vos.add(vo);
				}
			} catch (Exception e) {
				System.out.println("SQL오류(getGuestList) : " + e.getMessage());
			}finally {
				rsClose();
			}
			return vos;
		}
		
		//방명록에 글 저장하기
		public int setGuestInputOk(GuestVO vo) {
			int res=0;
			List<GuestVO> vos = new ArrayList<>();
			try {
				sql="insert into guest values (default, ?, ?, ?, ?, default, ?)";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, vo.getName());
				pstmt.setString(2, vo.getContent());
				pstmt.setString(3, vo.getEmail());
				pstmt.setString(4, vo.getHomePage());
				pstmt.setString(5, vo.getHostIp());
				res = pstmt.executeUpdate();
			}  catch (Exception e) {
				System.out.println("SQL오류(setGuestInputOk) : " + e.getMessage());
			}finally {
				pstmtClose();
			}
			return res;
		}
		
		//게시글 삭제
		public int setGuestDelete(int idx) {
			int res=0;
			try {
				sql = "delete from guest where idx = ?";
				pstmt=conn.prepareStatement(sql);
				pstmt.setInt(1, idx);
				res = pstmt.executeUpdate();
				
			} catch (Exception e) {
				System.out.println("SQL오류(setGuestDelete) : " + e.getMessage());
			} finally {
				pstmtClose();
			}
			return res;
		}
}
