package peng.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

import com.opensymphony.xwork2.ActionSupport;
import peng.service.AddPictureService;

// @author 彭秉浪
public class AddPictureAction extends ActionSupport {

	private AddPictureService addPictureService;
	private File imgFile;// Struts2会将上传成功的文件对象赋值给该属性
	private String imgFileFileName;// 通过该属性可获取到上传文件的名称
	private String msg = "图片上传失败！";

	public String getMsg() {
		return msg;
	}

	public void setImgFileFileName(String imgFileFileName) {
		this.imgFileFileName = imgFileFileName;
	}

	public void setImgFile(File imgFile) {
		this.imgFile = imgFile;
	}

	public void setAddPictureService(AddPictureService addPictureService) {
		this.addPictureService = addPictureService;
	}

	@Override
	public String execute() {// throws Exception
		if (imgFile == null || imgFileFileName == null) {
			msg = "没有选中文件！";
			return SUCCESS;
		}
		// 判断文件格式
		boolean b = ".jpg".equals(imgFileFileName.substring(imgFileFileName.length() - 4));
		if (b) {
			FileInputStream fis = null;
			FileOutputStream fos = null;
			try {
				fis = new FileInputStream(imgFile);
				int i = addPictureService.getPictureName();
				fos = new FileOutputStream("D:/彭秉浪/EclipseWorkspace/MyBlog/WebContent/images1/" + i + ".jpg");
				int data = 0;// 定义一个保存、读取文件中字节的临时变量
				while ((data = fis.read()) != -1) {
					fos.write(data);
				}
				addPictureService.setPictureName(i);
				msg = "图片上传成功！";
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					fis.close();
					fos.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		} else {
			msg = "暂不支持此文件格式";
		}
		return SUCCESS;
	}

	/**
	 * 用于跳转到上传页面的方法
	 * 
	 * @return
	 * @author 彭秉浪
	 */
	public String gotoPage() {
		msg = "";
		return SUCCESS;
	}
	// http://127.0.0.1:8080/MyBlog/addPicturePage.action
}
