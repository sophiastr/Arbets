package arbets;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Post {
	private int postId;
	private String text;
	private int userId;
	private Date dateTime;
	private int upvote;
	private int downvote;
	
	
	
	
	public Post(int postId, String text, int userId, Date dateTime, int upvote, int downvote) {
		super();
		this.postId = postId;
		this.text = text;
		this.userId = userId;
		this.dateTime = dateTime;
		this.upvote = upvote;
		this.downvote = downvote;
	}
	public int getPostId() {
		return postId;
	}
	public void setPostId(int postId) {
		this.postId = postId;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public Date getDateTime() {
		return dateTime;
	}
	public void setDateTime(Date dateTime) {
		this.dateTime = dateTime;
	}
	public int getUpvote() {
		return upvote;
	}
	public void setUpvote(int upvote) {
		this.upvote = upvote;
	}
	public int getDownvote() {
		return downvote;
	}
	public void setDownvote(int downvote) {
		this.downvote = downvote;
	}
	
	
	public static void createPost(String text,int userId) throws Exception {
		
		String sql = "insert into post(text,date_time, user_id, upvote, downvote) values(?,?, ?, ?, ?);";
	    DB db = new DB();

	    try {
	        Connection con = db.getConnection();
	        PreparedStatement stmt = con.prepareStatement(sql);
	     
	        Timestamp ts = Timestamp.from(Instant.now());
	        // setting parameters
	        stmt.setString(1, text);
	        stmt.setTimestamp(2,  ts);
	        stmt.setInt(3, userId);
	        stmt.setInt(4, 0);
	        stmt.setInt(5, 0);
	        

	        stmt.executeUpdate();

	        
	        stmt.close(); //closing PreparedStatement
	        db.close(); //closing Connection

	        

	    } catch (Exception e) {

	        throw new Exception(e.getMessage());

	    } finally {

	        try {
	            db.close();
	        } catch (Exception e) {
	            
	        }

	    }

	}
	
	
public static List<Post> getPosts() throws Exception {
        
        List<Post> posts = new ArrayList<>();

        String sql = "SELECT * FROM post;";
        DB db = new DB();

        try {
            Connection con = db.getConnection();
            PreparedStatement stmt = con.prepareStatement(sql);
            
            

            ResultSet rs = stmt.executeQuery();

            while (rs.next()){
                posts.add(new Post(rs.getInt("post_id"),rs.getString("text"),rs.getInt("user_id"),rs.getTimestamp("date_time"),rs.getInt("upvote"),rs.getInt("downvote")));
            }   

            rs.close();
            stmt.close();
            db.close();

            return posts;
        } catch(Exception e) {
            throw new Exception(e.getMessage());
        } finally{

            try {
                db.close();
            } catch (Exception e) {
                
            }
            
        }
    
	}
	@Override
	public String toString() {
		return "Post [postId=" + postId + ", text=" + text + ", userId=" + userId + ", dateTime=" + dateTime
				+ ", upvote=" + upvote + ", downvote=" + downvote + "]";
	}
	
	
}
