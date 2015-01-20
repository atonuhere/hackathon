package edu.iiitb.bookmyshow.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import Utils.DBManager;

public class Customer {
	static PreparedStatement statement=null;
	static ResultSet rs=null;
	static String sqlQuery="";
	static Customer returnCustomer=new Customer();
	int custID;
	String custName;
	String custEmail;
	
	
	public static Customer fetchCustomer(int customerID){
		Customer cust = new Customer();
		try{
			Connection con=DBManager.getConnection();
			DBManager.useDataBase(con);
			
			sqlQuery = "select customerID,firstName, lastName, emailID from customer where customerID="+customerID+" ;";
			statement=con.prepareStatement(sqlQuery);
			rs=statement.executeQuery();
			
			if(rs.next()){
				
				cust.setCustID(rs.getInt(1));
				cust.setCustEmail(rs.getString(4));
				cust.setCustName(rs.getString(2) +" "+rs.getString(3));
				
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	
		return cust;
	}


	public static Customer getReturnCustomer() {
		return returnCustomer;
	}


	public static void setReturnCustomer(Customer returnCustomer) {
		Customer.returnCustomer = returnCustomer;
	}


	public int getCustID() {
		return custID;
	}


	public void setCustID(int custID) {
		this.custID = custID;
	}


	public String getCustName() {
		return custName;
	}


	public void setCustName(String custName) {
		this.custName = custName;
	}


	public String getCustEmail() {
		return custEmail;
	}


	public void setCustEmail(String custEmail) {
		this.custEmail = custEmail;
	}
	
}