package com.luv2code.springdemo.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.luv2code.springdemo.entity.Customer;

@Repository
public class CustomerDAOImpl implements CustomerDAO {
	
	//need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;
	
	
	@Override
	public List<Customer> getCustomers() {
		
		//get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		//create query
		Query<Customer> theQuery = 
				currentSession.createQuery("from Customer", 
						Customer.class);
		//get the query result
		List<Customer> customers = theQuery.getResultList();
		//return the list of customers
		
		return customers;
	}


	@Override
	public void saveCustomer(Customer customer) {
		
		//get current session
		Session currentSession = sessionFactory.getCurrentSession();
		//save the customer... finally
		currentSession.save(customer);
				
	}


	@Override
	public Customer getCustomer(int theId) {
		
		//get the current hibernate session
		Session session= sessionFactory.getCurrentSession();
		//now retrieve from database using the primary key
		Customer customer = session.get(Customer.class, theId);
		
		return customer;
	}

}
