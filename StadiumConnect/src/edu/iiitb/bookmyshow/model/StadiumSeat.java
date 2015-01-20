package edu.iiitb.bookmyshow.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Utils.DBManager;

public class StadiumSeat {
	String stadiumId;
	String stadiumName;
	String seatId;
	String seatName;
	boolean seatAvailable;
		
	static ArrayList<StadiumSeat> returnSeats=new ArrayList<StadiumSeat>();
	static StadiumSeat stadiumSeat=new StadiumSeat();
	static PreparedStatement statement=null;
	static ResultSet rs=null;
	static String sqlQuery="";
	
	public static List<StadiumSeat> fetchStadiumStandSeats(int standId){
		//Stadium stad = new Stadium();
		List<StadiumSeat> stadiumLst = new ArrayList<StadiumSeat>();
		try{
			Connection con=DBManager.getConnection();
			DBManager.useDataBase(con);
			
			sqlQuery = " select ss.stadium_seatId, ss.num_stand_seat , b.bookedSeatsID , s.stadiumId" +
					" from stadium_seat as ss " +
					" LEFT OUTER JOIN bookedseats as b ON ss.stadium_seatId=b.seatID" +
					" INNER JOIN stadium_stand s ON s.stadium_standId=ss.stadium_standId" +
					" WHERE s.stadium_standId="+standId;
			statement=con.prepareStatement(sqlQuery);
			rs=statement.executeQuery();
			
			while(rs.next()){
				StadiumSeat seat = new StadiumSeat();
				seat.setSeatId(rs.getString(1));
				seat.setSeatName(rs.getString(2));
				if(rs.getString(3)!=null)
					seat.setSeatAvailable(false);
				else
					seat.setSeatAvailable(true);
				
				seat.setStadiumId(rs.getString(4));
				stadiumLst.add(seat);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	
		return stadiumLst;
	}

	public String getStadiumId() {
		return stadiumId;
	}

	public void setStadiumId(String stadiumId) {
		this.stadiumId = stadiumId;
	}

	public String getStadiumName() {
		return stadiumName;
	}

	public void setStadiumName(String stadiumName) {
		this.stadiumName = stadiumName;
	}

	public String getSeatId() {
		return seatId;
	}

	public void setSeatId(String seatId) {
		this.seatId = seatId;
	}

	public String getSeatName() {
		return seatName;
	}

	public void setSeatName(String seatName) {
		this.seatName = seatName;
	}

	public boolean isSeatAvailable() {
		return seatAvailable;
	}

	public void setSeatAvailable(boolean seatAvailable) {
		this.seatAvailable = seatAvailable;
	}

	public static StadiumSeat getStadiumSeat() {
		return stadiumSeat;
	}

	public static void setStadiumSeat(StadiumSeat stadiumSeat) {
		StadiumSeat.stadiumSeat = stadiumSeat;
	}

	public static PreparedStatement getStatement() {
		return statement;
	}

	public static void setStatement(PreparedStatement statement) {
		StadiumSeat.statement = statement;
	}
	
	

	
}
