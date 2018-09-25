package com.luv2code.springdemo.service;

import java.util.List;

import com.luv2code.springdemo.entity.Customer;
import com.luv2code.springdemo.entity.missing;

public interface CustomerService {

	public List<Customer> getCustomers();
    public List<missing>  getMissing();
	public void saveCustomer(Customer theCustomer);
	public Customer getCustomer(int theId);
    public missing getMissing(int theId);
	public void deleteCustomer(int theId);


	public void saveMissing(missing themissing);
	
}
