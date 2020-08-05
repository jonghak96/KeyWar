package com.jsplec.bbs.command.match;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.bbs.command.KCommand;
import com.jsplec.bbs.dao.KDao_match;

public class KCommandMatching implements KCommand {

	public KCommandMatching() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String myId = request.getParameter("myId");
		String gymSeqno = request.getParameter("gymSeqno");
		String rival = request.getParameter("rivalId");
		String date = request.getParameter("date");
		
		System.out.println(myId);
		System.out.println(gymSeqno);
		System.out.println(rival);
		System.out.println(date);
		
		KDao_match kaDao_match = new KDao_match();
		kaDao_match.matchInsert(myId, rival, gymSeqno, date);
		
		
	}
	
}
