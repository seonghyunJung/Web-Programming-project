package movie;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class movieDAO {
private Connection conn;
	
	private ResultSet rs;
	
	public movieDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/moviestar?useUnicode=true&characterEncoding=UTF-8";
			String dbID = "root";
			String dbPassword="0000";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int setMovie(String movieTitle, float movieStar) {
		String SQL = "update movie set movieStar = ? where movieTitle = ?";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1,String.format("%.2f", movieStar));
			pstmt.setString(2, movieTitle);
			return pstmt.executeUpdate();
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return-1;//데이터 베이스 오류
	}
	
	public float callStar(String movieTitle) {
			String SQL = "select * from movie where movieTitle = ?";
			System.out.println(SQL);
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, movieTitle);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				return rs.getFloat(2);
			}
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return-1;//데이터 베이스 오류
	}
}
