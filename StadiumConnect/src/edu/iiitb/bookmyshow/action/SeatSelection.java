package edu.iiitb.bookmyshow.action;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import Utils.DBManager;
import Utils.SeatingControl;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import edu.iiitb.bookmyshow.model.Customer;
import edu.iiitb.bookmyshow.model.StadiumStand;
import edu.iiitb.bookmyshow.model.TicketBooking;

public class SeatSelection extends ActionSupport{

	Connection con=null;


	int scheduleId;
	int standId;
	int quantityList;

	int price;
	List<Integer> seatIds=new ArrayList<Integer>();
	List<TicketBooking> tickets=new ArrayList<TicketBooking>();
	String preBooked;
	Customer customer= new Customer();
	int totalPrice;
	String confirmedSeats;
	String username;
	
	int bookingId;
	String transactionNum;
	
	



	public int getBookingId() {
		return bookingId;
	}
	public void setBookingId(int bookingId) {
		this.bookingId = bookingId;
	}
	public String getTransactionNum() {
		return transactionNum;
	}
	public void setTransactionNum(String transactionNum) {
		this.transactionNum = transactionNum;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getConfirmedSeats() {
		return confirmedSeats;
	}
	public void setConfirmedSeats(String confirmedSeats) {
		this.confirmedSeats = confirmedSeats;
	}
	public String getPreBooked() {
		return preBooked;
	}
	public void setPreBooked(String preBooked) {
		this.preBooked = preBooked;
	}
	
	public int getScheduleId() {
		return scheduleId;
	}
	public void setScheduleId(int scheduleId) {
		this.scheduleId = scheduleId;
	}

	public int getQuantityList() {
		return quantityList;
	}
	public void setQuantityList(int quantityList) {
		this.quantityList = quantityList;
	}


	public String selectSeats(){
		System.out.println("in seat selection.....");
		System.out.println("schedule id: "+scheduleId);
		System.out.println("quantity: "+quantityList);
		SeatSelection details = new SeatSelection();
		con = DBManager.getConnection();
		details = SeatingControl.getDetails(con, scheduleId);
		setPreBooked(details.getPreBooked());
		System.out.println(getPreBooked());
		return SUCCESS;
	}

	public String bookSeats(){

		int result = 0;
		seatIds=getSeatIds();
		int standPrice=StadiumStand.stadiumStandPrice(standId);
		quantityList = seatIds.size();
		price = quantityList * standPrice;
		
		System.out.println("Schedule id: "+scheduleId);
		System.out.println("Stand id: "+standId);
		System.out.println(quantityList+".... "+price);

		if (ActionContext.getContext().getSession().get("userSession")==null){
			System.out.println("no user logged in yet");
			return "login";
		}
		else{

			setUsername(ActionContext.getContext().getSession().get("userSession").toString());
			System.out.println("user is "+username);
			//con = DBManager.getConnection();			
			//int balance = SeatingControl.getBalance(con, username);
			//System.out.println("Balance is:"+balance);

			
				con = DBManager.getConnection();
				int customerId = SeatingControl.getCustomerID(con, username);
				 
				System.out.println("Customer ID is: "+customerId);

				con = DBManager.getConnection();
				int bookingID = SeatingControl.bookTotalSeats(con, customerId, scheduleId, quantityList,standPrice);

				if(bookingID == 0){
					System.out.println("Error occured in bookTotalSeats");
					return "error";
				}
				else{
					System.out.println("Successful update");
				}

				con = DBManager.getConnection();
				result = SeatingControl.bookSeatNums(con, bookingID, getSeatIds());

				if(result == 0){
					System.out.println("Error occured in bookSeatNums");
					return "error";
				}
				else{
					System.out.println("Successful update");
					result = 0;
				}

				con = DBManager.getConnection();
				result = SeatingControl.processTransaction(con, bookingID, price);

				if(result == 0){
					System.out.println("Error occured in processTransaction");
					return "error";
				}
				else{
					System.out.println("Successful update");
					result = 0;
				}

				
				setBookingId(bookingID);
				
				con = DBManager.getConnection();
				transactionNum = SeatingControl.getTransactionNum(con, bookingID);
				customer=Customer.fetchCustomer(customerId);
				setTransactionNum(transactionNum);
				
				
		}
		
		return SUCCESS;
	}
	
	public String confirmTicket(){
		int result = 0;
		con = DBManager.getConnection();
		result = SeatingControl.bookTicket(con, bookingId,scheduleId);
	
		if(result == 0){
			System.out.println("Error occured in bookTicket");
			return "error";
		}
		else{
			System.out.println("Successful update");
			result = 0;
		}
		con = DBManager.getConnection();
		int customerId = SeatingControl.getCustomerID(con, username);
		tickets=TicketBooking.fetchCustomerBookings(customerId);
		
		return SUCCESS; 
	}
	public int getStandId() {
		return standId;
	}
	public void setStandId(int standId) {
		this.standId = standId;
	}
	public List<Integer> getSeatIds() {
		return seatIds;
	}
	public void setSeatIds(List<Integer> seatIds) {
		this.seatIds = seatIds;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public List<TicketBooking> getTickets() {
		return tickets;
	}
	public void setTickets(List<TicketBooking> tickets) {
		this.tickets = tickets;
	}
	
}
