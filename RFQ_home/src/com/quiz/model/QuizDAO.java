package com.quiz.model;

import com.db.ConnectionPoolMgr;

public class QuizDAO {
	private ConnectionPoolMgr pool;
	
	public QuizDAO() {
		pool = new ConnectionPoolMgr();
	}
}
