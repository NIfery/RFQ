package com.customer.model;

import java.sql.SQLException;
import java.util.List;

public class CustomerService {
	private CustomerDAO customerDao;
	
	public CustomerService() {
		customerDao = new CustomerDAO();
	}
	
	public int insertCustomer(CustomerVO vo) throws SQLException {
		return customerDao.insertCustomer(vo);
	}
	
	public List<CustomerVO> selectAll(String userid) throws SQLException{
		return customerDao.selectAll(userid);
	}
	
	public CustomerVO selectByNo(int no) throws SQLException{
		return customerDao.selectByNo(no);
	}
	
	public int deleteCustomer(int no) throws SQLException {
		return customerDao.deleteCustomer(no);
	}
	
	public int answerCustomer(String answer, int no) throws SQLException {
		return customerDao.answerCustomer(answer, no);
	}
}
