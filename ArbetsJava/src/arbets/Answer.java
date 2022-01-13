package arbets;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Answer {
private int answerId;
private String text;
private Date dateTime;
private int userId;
private int upvote;
private int downvote;
private int postId;
private boolean isSolution;
public int getAnswerId() {
	return answerId;
}
public void setAnswerId(int answerId) {
	this.answerId = answerId;
}
public String getText() {
	return text;
}
public Answer(int answerId, String text, Date dateTime, int userId, int upvote, int downvote, boolean isSolution,int postId
		) {
	super();
	this.answerId = answerId;
	this.text = text;
	this.dateTime = dateTime;
	this.userId = userId;
	this.upvote = upvote;
	this.downvote = downvote;
	this.postId = postId;
	this.isSolution = isSolution;
}
public void setText(String text) {
	this.text = text;
}
public Date getDateTime() {
	return dateTime;
}
public void setDateTime(Date dateTime) {
	this.dateTime = dateTime;
}
public int getUserId() {
	return userId;
}
public void setUserId(int userId) {
	this.userId = userId;
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
public int getPostId() {
	return postId;
}
public void setPostId(int postId) {
	this.postId = postId;
}
public boolean isSolution() {
	return isSolution;
}
public static void setSolution(int answerId) throws Exception {
	String sql = "UPDATE answer SET is_solution = True WHERE answer_id=?;";
	String sqlPoints = "UPDATE user SET points = points + 100 WHERE (SELECT answer.user_id FROM answer WHERE answer.answer_id = ?) = user.user_id;";
    DB db = new DB();

    try {
        Connection con = db.getConnection();
        PreparedStatement stmt = con.prepareStatement(sql);
        
        stmt.setInt(1,answerId);
        stmt.executeUpdate();

        stmt = con.prepareStatement(sqlPoints);
        stmt.setInt(1,answerId);
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


public static void createAnswer(String text,int userId,int postId) throws Exception {
	
	String sql = "insert into answer(text,date_time, user_id, upvote, downvote, is_solution, post_id) values(?,?, ?, ?, ?, ?, ?);";
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
        stmt.setBoolean(6, false);
        stmt.setInt(7, postId);

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
public static List<Answer> getAnswers() throws Exception {
    
    List<Answer> answers = new ArrayList<>();

    String sql = "SELECT * FROM answer;";
    DB db = new DB();
    
    try {
        Connection con = db.getConnection();
        PreparedStatement stmt = con.prepareStatement(sql);
        
        

        ResultSet rs = stmt.executeQuery();

        while (rs.next()){
        	answers.add(new Answer(rs.getInt("answer_id"),rs.getString("text"),rs.getTimestamp("date_time"),rs.getInt("user_id"),rs.getInt("upvote"),rs.getInt("downvote"),rs.getBoolean("is_solution"),rs.getInt("post_id")));
        }   

        rs.close();
        stmt.close();
        db.close();

        return answers;
    } catch(Exception e) {
        throw new Exception(e.getMessage());
    } finally{

        try {
            db.close();
        } catch (Exception e) {
            
        }
        
    }

}
public static void upvote(int answerId) throws Exception {
	String sql = "UPDATE answer SET upvote = upvote+1 WHERE answer_id=?;";
    DB db = new DB();

    try {
        Connection con = db.getConnection();
        PreparedStatement stmt = con.prepareStatement(sql);
     
        stmt.setInt(1,answerId);
        

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
public static void downvote(int answerId) throws Exception {
	String sql = "UPDATE answer SET downvote = downvote+1 WHERE answer_id=?;";
    DB db = new DB();

    try {
        Connection con = db.getConnection();
        PreparedStatement stmt = con.prepareStatement(sql);
     
        stmt.setInt(1,answerId);
        

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
public static List<Answer> getAnswersOfPost(Post post) throws Exception{
	List<Answer> answers = new ArrayList<Answer>();
	String sql = "SELECT * FROM answer where post_id= ?;";
    DB db = new DB();
    try {
        Connection con = db.getConnection();
        PreparedStatement stmt = con.prepareStatement(sql);
        
        
        stmt.setInt(1, post.getPostId());
        ResultSet rs = stmt.executeQuery();

        while (rs.next()){
        	answers.add(new Answer(rs.getInt("answer_id"),rs.getString("text"),rs.getTimestamp("date_time"),rs.getInt("user_id"),rs.getInt("upvote"),rs.getInt("downvote"),rs.getBoolean("is_solution"),rs.getInt("post_id")));
        }   

        rs.close();
        stmt.close();
        db.close();

        return answers;
    } catch(Exception e) {
        throw new Exception(e.getMessage());
    } finally{

        try {
            db.close();
        } catch (Exception e) {
            
        }
        
    }
	
}

public static void deleteAns(int answerId) throws Exception {
	String sql = "DELETE FROM answer WHERE answer_id = ?;";
    DB db = new DB();

    try {
        Connection con = db.getConnection();
        PreparedStatement stmt = con.prepareStatement(sql);
     
        stmt.setInt(1,answerId);
        

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

@Override
public String toString() {
	return "Answer [answerId=" + answerId + ", text=" + text + ", dateTime=" + dateTime + ", userId=" + userId
			+ ", upvote=" + upvote + ", downvote=" + downvote + ", postId=" + postId + ", isSolution=" + isSolution
			+ "]";
}



}
