package notice;


public class Notice {
	private int noticeID;
	private String noticeContent;
	private String noticeDate;
	private String movieTitle;
	private float movieStar;
	private String userId;
	public int getNoticeID() {
		return noticeID;
	}
	public void setNoticeID(int noticeID) {
		this.noticeID = noticeID;
	}
	public String getNoticeContent() {
		return noticeContent;
	}
	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}
	public String getNoticeDate() {
		return noticeDate;
	}
	public void setNoticeDate(String noticeDate) {
		this.noticeDate = noticeDate;
	}
	public String getMovieTitle() {
		return movieTitle;
	}
	public void setMovieTitle(String movieTitle) {
		this.movieTitle = movieTitle;
	}
	public float getMovieStar() {
		return movieStar;
	}
	public void setMovieStar(float movieStar) {
		this.movieStar = movieStar;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
}
