package peng.entity;

// @author Εν±όΐΛ
public class Picture {

	private Integer PictureID;
	private String image;
	private Integer AlbumID;

	public Integer getPictureID() {
		return PictureID;
	}

	public void setPictureID(Integer pictureID) {
		PictureID = pictureID;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Integer getAlbumID() {
		return AlbumID;
	}

	public void setAlbumID(Integer albumID) {
		AlbumID = albumID;
	}

	@Override
	public String toString() {
		return "Picture [PictureID=" + PictureID + ", image=" + image + ", AlbumID=" + AlbumID + "]";
	}
}
