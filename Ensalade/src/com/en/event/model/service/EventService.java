package com.en.event.model.service;

import static com.en.common.Template.close;
import static com.en.common.Template.getConnection;
import static com.en.common.Template.commit;
import static com.en.common.Template.rollback;

import java.sql.Connection;
import java.util.List;

import com.en.event.model.dao.EventDao;
import com.en.event.model.vo.Event;
import com.en.event.model.vo.EventContent;

public class EventService {

	private EventDao dao = new EventDao();
	
	
	public List<Event> secherEvent(){
        Connection conn=getConnection();
        int result = dao.deletsEvent(conn);
        if(result>0) commit(conn);
        else rollback(conn);
        List<Event> list=dao.secherEvent(conn);
        close(conn);
        return list;
	}
	
	public List<EventContent> selectEventOne(String code){
		Connection conn = getConnection();
		List<EventContent> list = dao.selectEventOne(conn, code);
		close(conn);
		return list;
	}
	public List<Event> eventList(){
		Connection conn=getConnection();
		List<Event> list=dao.eventList(conn);
		close(conn);
		return list;
	}
	
	
}
