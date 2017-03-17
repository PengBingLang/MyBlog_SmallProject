package peng.entity;

// @author Εν±όΐΛ
public class Message {

	private Integer messageID;
	private Integer userID;
	private String messageName;
	private String content;
	private String time;

	public Integer getMessageID() {
		return messageID;
	}

	public void setMessageID(Integer messageID) {
		this.messageID = messageID;
	}

	public Integer getUserID() {
		return userID;
	}

	public void setUserID(Integer userID) {
		this.userID = userID;
	}

	public String getMessageName() {
		return messageName;
	}

	public void setMessageName(String messageName) {
		this.messageName = messageName;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time.substring(0,10);
	}

	@Override
	public String toString() {
		return "Message [messageID=" + messageID + ", userID=" + userID + ", messageName=" + messageName + ", content="
				+ content + ", time=" + time + "]";
	}
}
