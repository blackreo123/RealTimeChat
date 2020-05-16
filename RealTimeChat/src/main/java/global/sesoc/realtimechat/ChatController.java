package global.sesoc.realtimechat;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ChatController {
	@Autowired
	ChatDAO dao;
	
	@PostMapping("/submit")
	@ResponseBody
	public String submit(String chatName, String chatContent) {
		int res=dao.submit(chatName,chatContent);
		return null;
	}
	
	@GetMapping("getList")
	@ResponseBody
	public ArrayList<Chat> getList() {
		ArrayList<Chat> chatList = dao.getChatList();
		return chatList;
	}
	
}
