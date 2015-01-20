package edu.iiitb.bookmyshow.model;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import Utils.DBManager;

public class TicketBooking {

	int transactionNum;
	int ticketNum;
	String customerName;
	String stand;
	String seat;
	String eventName; 
	String showDate;
	String showTime;
	int totalSeats, amount, bookingId;
	
	static ArrayList<TicketBooking> bookHistory = new ArrayList<TicketBooking>();
	static PreparedStatement statement=null;
	static ResultSet rs=null;
	static String sqlQuery="";
	static java.sql.Connection con=null;
	
	public static ArrayList<TicketBooking> fetchCustomerBookings(int custId){

		bookHistory.clear();

		try{
			Connection con=DBManager.getConnection();
			DBManager.useDataBase(con);
			java.sql.Date now = new java.sql.Date(System.currentTimeMillis());
			sqlQuery = 
					"SELECT ticketNum,totalAmount, firstName,lastName, stand_name,seatNums,schedule_name,showDate,capacity " +
					" FROM schedule_match,stadium, stadium_stand, bookinginfo, ticket, customer "+ 
					" WHERE ticket.customerID=" +custId+
					" AND ticket.customerID=customer.customerID"+ 
					" AND ticket.scheduleID=schedule_match.scheduleID "+ 
					" AND bookinginfo.scheduleID=schedule_match.scheduleID "+
					" AND schedule_match.stadiumId=stadium.stadiumId "+
					" AND stadium_stand.stadiumId=stadium.stadiumId "+
					" LIMIT 1";

			//statement=con.prepareStatement(sqlQuery);
			//statement.setInt(1, custId);
			Statement statement = con.createStatement();
			rs=statement.executeQuery(sqlQuery);

			while(rs.next()){

				TicketBooking bookingOp = new TicketBooking();

				bookingOp.setTicketNum(rs.getInt(1));
				bookingOp.setAmount(rs.getInt(2));
				bookingOp.setCustomerName(rs.getString(3) + "" + rs.getString(4));
				bookingOp.setStand(rs.getString(5));
				bookingOp.setSeat(rs.getString(6));
				bookingOp.setEventName(rs.getString(7));
				bookingOp.setShowDate(rs.getString(8));
							
				System.out.println(">>>>"+bookingOp.getShowDate());
				bookHistory.add(bookingOp);
			}
		}
		catch (Exception e) {
			bookHistory.clear();
			e.printStackTrace();
		}
		return bookHistory;
	}
	
	public int getBookingId() {
		return bookingId;
	}

	public void setBookingId(int bookingId) {
		this.bookingId = bookingId;
	}

	public int getTransactionNum() {
		return transactionNum;
	}

	public void setTransactionNum(int transactionNum) {
		this.transactionNum = transactionNum;
	}

	

	public String getShowDate() {
		return showDate;
	}

	public void setShowDate(String showDate) {
		this.showDate = showDate;
	}

	public String getShowTime() {
		return showTime;
	}

	public void setShowTime(String showTime) {
		this.showTime = showTime;
	}

	public int getTotalSeats() {
		return totalSeats;
	}

	public void setTotalSeats(int totalSeats) {
		this.totalSeats = totalSeats;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public String getEventName() {
		return eventName;
	}

	public void setEventName(String eventName) {
		this.eventName = eventName;
	}

	public int getTicketNum() {
		return ticketNum;
	}

	public void setTicketNum(int ticketNum) {
		this.ticketNum = ticketNum;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getStand() {
		return stand;
	}

	public void setStand(String stand) {
		this.stand = stand;
	}

	public String getSeat() {
		return seat;
	}

	public void setSeat(String seat) {
		this.seat = seat;
	}

	public static ArrayList<TicketBooking> getBookHistory() {
		return bookHistory;
	}

	public static void setBookHistory(ArrayList<TicketBooking> bookHistory) {
		TicketBooking.bookHistory = bookHistory;
	}
}
