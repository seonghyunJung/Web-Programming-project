package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {

		private Connection conn;
		private PreparedStatement pstmt;
		private ResultSet rs;
		
		public UserDAO() {
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
		
		public int login(String userID, String userPassword) {
			String SQL = "SELECT userPassword FROM USER WHERE userID=?";
			try {
				pstmt = conn.prepareStatement(SQL);
				pstmt.setString(1, userID);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					if(rs.getString(1).equals(userPassword)) {
						return 1; //login success
					}
					else 
						return 0;// password error 
				}
				return -1; //아이디 없음
			}catch (Exception e) {
				e.printStackTrace();
			}
			return -2; // 데이터 베이스 오류
		}
		
		public int join(User user) {
			String SQL = "INSERT INTO USER VALUES (?,?,?,?)";
			try {
				pstmt = conn.prepareStatement(SQL);
				pstmt.setString(1,  user.getUserID());
				pstmt.setString(2,  user.getUserName());
				pstmt.setString(3,  user.getUserPassword());
				pstmt.setString(4,  user.getUserEmail());
				return pstmt.executeUpdate();
			}catch(Exception e){
				e.printStackTrace();
			}
			return -1;
		}
}
