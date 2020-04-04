package com.cognizant.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cognizant.project.Dao.CustomerDao;
import com.cognizant.project.entities.Customer;

@Service
public class CustomerServiceImpl implements CustomerService{
    @Autowired
	CustomerDao customerDao;
    
	
	@Transactional
	public List<Customer> getAllCustomers() {
		return customerDao.getAllCustomers();
	}

	
	@Transactional
	public void regCustomer(Customer theCustomer) {
		customerDao.regCustomer(theCustomer);
		
	}

	
	@Transactional
	public Customer getCustomer(int theId) {
		return customerDao.getCustomer(theId);
	}


	@Transactional
	public void deleteCustomer(int theId) {
		customerDao.deleteCustomer(theId); 
	}

	@Transactional

	public List<Customer> getCustomerbyNameOrId(String val) {
		return customerDao.getCustomerbyNameOrId(val);
	}

}
