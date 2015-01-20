package edu.iiitb.bookmyshow.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Utils.DBManager;

public class Stadium {
	static int standId;
	String stadiumId;
	String stadiumName;
	String stadiumCapacity;
	boolean stadiumParking;
	
	String stadiumCity;
	
	
	static ArrayList<Stadium> returnStadiums=new ArrayList<Stadium>();
	static Stadium stadium=new Stadium();
	static PreparedStatement statement=null;
	static ResultSet rs=null;
	static String sqlQuery="";
	
	public static Stadium fetchStadium(){
		Stadium stad = new Stadium();
		try{
			Connection con=DBManager.getConnection();
			DBManager.useDataBase(con);
			
			sqlQuery = " select stadium_name, parkingAvailable,capacity " +
					" from stadium" +
					" where stadiumId="+standId;
			statement=con.prepareStatement(sqlQuery);
			rs=statement.executeQuery();
			
			if(rs.next()){
				stad.setStadiumName(rs.getString(1));
				if(rs.getString(2).toString().equalsIgnoreCase("Y"))
					stad.setStadiumParking(true);
				else	
					stad.setStadiumParking(false);
				stad.setStadiumCapacity(rs.getString(3));
				
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	
		return stad;
	}
	
	
	

	public static int getStandId() {
		return standId;
	}

	public static void setStandId(int standId) {
		Stadium.standId = standId;
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

	public String getStadiumCapacity() {
		return stadiumCapacity;
	}

	public void setStadiumCapacity(String stadiumCapacity) {
		this.stadiumCapacity = stadiumCapacity;
	}

	public boolean isStadiumParking() {
		return stadiumParking;
	}

	public void setStadiumParking(boolean stadiumParking) {
		this.stadiumParking = stadiumParking;
	}

	public String getStadiumCity() {
		return stadiumCity;
	}

	public void setStadiumCity(String stadiumCity) {
		this.stadiumCity = stadiumCity;
	}

	public static ArrayList<Stadium> getReturnStadiums() {
		return returnStadiums;
	}

	public static void setReturnStadiums(ArrayList<Stadium> returnStadiums) {
		Stadium.returnStadiums = returnStadiums;
	}

	public static Stadium getStadium() {
		return stadium;
	}

	public static void setStadium(Stadium stadium) {
		Stadium.stadium = stadium;
	}
	
	

	
}
