package com.cognizant.project.Dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cognizant.project.entities.Customer;
@Repository
public class CustomerDaoImpl implements CustomerDao{

	@Autowired
	private SessionFactory factory;
	
	public List<Customer> getAllCustomers() {
		Session session = factory.getCurrentSession();
		Query<Customer> query=session.createQuery("from Customer",Customer.class);
		 List<Customer> listOfCustomers=query.getResultList();
		  System.out.println("********************");
		 // listOfCustomers.forEach(c->System.out.println(c));
		  System.out.println("*");
		return listOfCustomers;
	}

	
	public void regCustomer(Customer theCustomer) {
		Session session=factory.getCurrentSession();
		session.saveOrUpdate(theCustomer);
		
	}

	
	public Customer getCustomer(int theId) {
		
		Session session=factory.getCurrentSession();
		Customer customer=session.get(Customer.class, theId);
		return customer;
	}

	
	public void deleteCustomer(int theId) {
		Session session=factory.getCurrentSession();
		Query theQuery=session.createQuery("delete from Customer where id=:theCustomerId");
		theQuery.setParameter("theCustomerId",theId);
		theQuery.executeUpdate();
		System.out.println("delete method called");
	}


	public List<Customer> getCustomerbyNameOrId(String val) {
		Session session=factory.getCurrentSession();
		Query<Customer> query=session.createQuery("from Customer where firstName like'"+val+"%' or lastName like'"+val+"%' or concat(firstName,lastName) like '"+val+"%' or id='"+val+"' order by id");
		 List<Customer> listOfCustomers=query.getResultList();
			return listOfCustomers;

		
	}

}
