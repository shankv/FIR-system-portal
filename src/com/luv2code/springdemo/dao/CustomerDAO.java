package com.luv2code.springdemo.dao;

import java.util.List;

import com.luv2code.springdemo.entity.Customer;
import com.luv2code.springdemo.entity.missing;

public interface CustomerDAO {

	public List<Customer> getCustomers();
    public List<missing>  getMissing();
	public void saveCustomer(Customer theCustomer);
    public void saveMissing(missing themissing);
	public Customer getCustomer(int theId);
    public missing getMissing(int theId);
	public void deleteCustomer(int theId);
	
}
