package com.cognizant.project.Dao;

import java.util.List;

import com.cognizant.project.entities.Customer;

public interface CustomerDao{

	List<Customer> getAllCustomers();

	void regCustomer(Customer theCustomer);

	Customer getCustomer(int theId);

	void deleteCustomer(int theId);

	List<Customer> getCustomerbyNameOrId(String val);


}
