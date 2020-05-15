package global.sesoc.realtimechat;

import java.util.ArrayList;
import java.util.HashMap;

public interface ChatMapper {
	//채팅리스트 불러오기
	ArrayList<Chat> getChatList(String nowTime);
	//채팅 등록
	int insertChat(HashMap<String, Object> map);

}
