package global.sesoc.realtimechat;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ChatDAO {
	@Autowired
	SqlSession session;
	
	public ArrayList<Chat> getChatList(String nowTime){
		ArrayList<Chat>getChatList=null;
		ChatMapper mapper = session.getMapper(ChatMapper.class);
		getChatList=mapper.getChatList(nowTime);
		return getChatList;
	}
	
	public int submit(String chatName,String chatContent) {
		HashMap<String,Object>map=new HashMap<>();
		map.put("chatName", chatName);
		map.put("chatContent", chatContent);
		ChatMapper mapper = session.getMapper(ChatMapper.class);
		int res = mapper.insertChat(map);
		return res;
	}
}
