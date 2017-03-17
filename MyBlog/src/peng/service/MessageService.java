package peng.service;

import java.util.List;
import org.springframework.transaction.annotation.Transactional;

import peng.dao.MessageDao;
import peng.entity.Message;

// @author Åí±üÀË
@Transactional
public class MessageService {

	private MessageDao messageDao;

	public void setMessageDao(MessageDao messageDao) {
		this.messageDao = messageDao;
	}

	/**
	 * µÃµ½ËùÓĞÁôÑÔ
	 * 
	 * @param page
	 * @return
	 * @author Åí±üÀË
	 */
	public List<Message> getPageMessage(int page) {
		return messageDao.getPageMessage(page);
	}

	/**
	 * µÃµ½ÁôÑÔ×ÜÒ³Êı
	 * 
	 * @return
	 * @author Åí±üÀË
	 */
	public int getMaxPage() {
		int i = messageDao.getCountMessage();
		return i % 3 == 0 ? i / 3 : i / 3 + 1;
	}

	/**
	 * Ìí¼ÓÒ»ÌõÁôÑÔ
	 * 
	 * @param s1
	 * @param s2
	 * @return
	 * @author Åí±üÀË
	 */
	public String addMessage(String s1, String s2) {
		if ("".equals(s1) || "".equals(s2)) {
			return "ÄÚÈİÎª¿Õ£¡";
		}
		if (messageDao.addMessage(s1, s2)) {
			return "ÁôÑÔ³É¹¦£¡";
		} else {
			return "ÁôÑÔÊ§°Ü£¡";
		}
	}

	public void messageDele(int id) {
		messageDao.messageDele(id);
	}
}
