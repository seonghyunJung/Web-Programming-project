package notice;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class noticeDAO {
	private Connection conn;
	
	private ResultSet rs;
	
	public noticeDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/moviestar?useUnicode=true&characterEncoding=UTF-8";
			String dbID = "root";
			String dbPassword="aA5535067!";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	public String getDate() {
		String SQL ="SELECT NOW()";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return"";
	}
	public int getNext() {
		String SQL ="SELECT noticeId FROM notice ORDER BY noticeID DESC";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1)+1;
			}
			return 1;//첫번째 게시물일경우
		}catch(Exception e) {
			e.printStackTrace();
		}
		return-1;//데이터 베이스 오류
	}
	public ArrayList<Notice> getList(int pageNumber){
		System.out.println("1");
		String SQL = "SELECT * FROM notice WHERE noticeID < ? ORDER BY noticeId DESC LIMIT 10";
		ArrayList<Notice> list = new ArrayList<Notice>();
		try {
			
			PreparedStatement pstmt = conn.prepareStatement(SQL);			
			pstmt.setInt(1, getNext() - (pageNumber -1) *10);	
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Notice notice = new Notice();
				notice.setNoticeID(rs.getInt(1));
				notice.setNoticeContent(rs.getString(2));
				notice.setNoticeDate(rs.getString(3));
				notice.setMovieTitle(rs.getString(4));
				notice.setMovieStar(rs.getFloat(5));
				notice.setUserId(rs.getString(6));
				list.add(notice);
				System.out.println("1");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public int write(String movieTitle, float movieStar, String userID, String noticeContent) {
		String SQL = "INSERT INTO notice VALUES (?,?,?,?,?,?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			System.out.println("1");
			pstmt.setInt(1, getNext());
			System.out.println("1");
			pstmt.setString(2, noticeContent);
			System.out.println("1");
			pstmt.setString(3, getDate());
			System.out.println("1");
			pstmt.setString(4, movieTitle);
			System.out.println("1");
			pstmt.setFloat(5, movieStar);
			System.out.println("1");
			pstmt.setString(6, userID);
			System.out.println("1");
			return pstmt.executeUpdate();
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return-1;//데이터 베이스 오류
	}
}
