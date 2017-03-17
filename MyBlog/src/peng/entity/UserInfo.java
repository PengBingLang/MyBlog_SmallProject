package peng.entity;

// @author Εν±όΐΛ
public class UserInfo {

	private Integer userID;
	private String realName;
	private String sex;
	private String birth;
	private String email;
	private String tell;
	private String qQNum;
	private String image;
	private String selfIntroduction;
	private String slefWord;

	public Integer getUserID() {
		return userID;
	}

	public void setUserID(Integer userID) {
		this.userID = userID;
	}

	public String getRealName() {
		return realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTell() {
		return tell;
	}

	public void setTell(String tell) {
		this.tell = tell;
	}

	public String getqQNum() {
		return qQNum;
	}

	public void setqQNum(String qQNum) {
		this.qQNum = qQNum;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getSelfIntroduction() {
		return selfIntroduction;
	}

	public void setSelfIntroduction(String selfIntroduction) {
		this.selfIntroduction = selfIntroduction;
	}

	public String getSlefWord() {
		return slefWord;
	}

	public void setSlefWord(String slefWord) {
		this.slefWord = slefWord;
	}

	@Override
	public String toString() {
		return "UserInfo [userID=" + userID + ", realName=" + realName + ", sex=" + sex + ", birth=" + birth
				+ ", email=" + email + ", tell=" + tell + ", qQNum=" + qQNum + ", image=" + image
				+ ", selfIntroduction=" + selfIntroduction + ", slefWord=" + slefWord + "]";
	}
}
