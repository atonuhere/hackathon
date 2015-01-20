package edu.iiitb.bookmyshow.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Utils.DBManager;

public class StadiumStand {
	String stadiumStandId;
	String standName;
	String standColor;
	String standSize;
	String standDays;
	String standPrice;
	String standAngularWidth;
	List<StadiumStand>	childrens;
	
	static ArrayList<StadiumStand> returnStands=new ArrayList<StadiumStand>();
	static StadiumStand stadiumStand=new StadiumStand();
	static PreparedStatement statement=null;
	static ResultSet rs=null;
	static String sqlQuery="";
	
	public static List<StadiumStand> fetchStadiumStand(int stadiumId){
		returnStands.clear();
		
		try{
			Connection con=DBManager.getConnection();
			DBManager.useDataBase(con);
			
			sqlQuery = " select stand_name, stand_color, stand_angular_width, stand_size, " +
					" stand_days, stand_level, stand_parent_id, stand_price" +
					" from stadium_stand" +
					" where stadiumId="+stadiumId;
			statement=con.prepareStatement(sqlQuery);
			rs=statement.executeQuery();
			
			while(rs.next()){
				StadiumStand stad = new StadiumStand();
				stad.setStandName(rs.getString(1));
				stad.setStandColor(rs.getString(2));
				stad.setStandAngularWidth(rs.getString(3));
				stad.setStandSize(rs.getString(4));
				stad.setStandDays(rs.getString(5));
				/*if(rs.getString(6).equalsIgnoreCase("0")){
					stad.setChildrens(fetchChidren(rs.getInt(7)));
				}*/
				//stad.setStandPrice(rs.getString(8));
				returnStands.add(stad);
				
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	
		return returnStands;
	}
	
	public static int stadiumStandPrice(int standId){
		int standPrice = 0;
		
		try{
			Connection con=DBManager.getConnection();
			DBManager.useDataBase(con);
			
			sqlQuery = " select stand_price" +
					" from stadium_stand" +
					" where stadium_standId="+standId;
			statement=con.prepareStatement(sqlQuery);
			rs=statement.executeQuery();
			
			if(rs.next()){
				standPrice= rs.getInt(1);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	
		return standPrice;
	}
	
	public static List<StadiumStand> fetchChidren(int standId){
		returnStands.clear();
		
		try{
			Connection con=DBManager.getConnection();
			DBManager.useDataBase(con);
			
			sqlQuery = " select stand_name, stand_color, stand_angular_width, " +
					" stand_size , stand_days, stand_level, stand_parent_id " +
			" from stadium_stand" +
			" where stadium_standId="+standId;
			statement=con.prepareStatement(sqlQuery);
			rs=statement.executeQuery();
			
			while(rs.next()){
				StadiumStand stad = new StadiumStand();
				stad.setStandName(rs.getString(1));
				stad.setStandColor(rs.getString(2));
				stad.setStandAngularWidth(rs.getString(3));
				stad.setStandSize(rs.getString(4));
				stad.setStandDays(rs.getString(5));
				if(rs.getString(6).equalsIgnoreCase("0")){
					stad.setChildrens(fetchChidren(rs.getInt(7)));
				}
				returnStands.add(stad);
				
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	
		return returnStands;
	}

	public String getStadiumStandId() {
		return stadiumStandId;
	}

	public void setStadiumStandId(String stadiumStandId) {
		this.stadiumStandId = stadiumStandId;
	}

	public String getStandName() {
		return standName;
	}

	public void setStandName(String standName) {
		this.standName = standName;
	}

	public String getStandColor() {
		return standColor;
	}

	public void setStandColor(String standColor) {
		this.standColor = standColor;
	}

	public String getStandSize() {
		return standSize;
	}

	public void setStandSize(String standSize) {
		this.standSize = standSize;
	}

	public String getStandDays() {
		return standDays;
	}

	public void setStandDays(String standDays) {
		this.standDays = standDays;
	}

	public String getStandAngularWidth() {
		return standAngularWidth;
	}

	public void setStandAngularWidth(String standAngularWidth) {
		this.standAngularWidth = standAngularWidth;
	}

	public List<StadiumStand> getChildrens() {
		return childrens;
	}

	public void setChildrens(List<StadiumStand> childrens) {
		this.childrens = childrens;
	}

	public static StadiumStand getStadiumStand() {
		return stadiumStand;
	}

	public static void setStadiumStand(StadiumStand stadiumStand) {
		StadiumStand.stadiumStand = stadiumStand;
	}

	public String getStandPrice() {
		return standPrice;
	}

	public void setStandPrice(String standPrice) {
		this.standPrice = standPrice;
	}

	

	
}
