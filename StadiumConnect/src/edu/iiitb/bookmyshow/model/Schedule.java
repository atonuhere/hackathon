package edu.iiitb.bookmyshow.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import Utils.DBManager;

public class Schedule {
	
	String eventId;
	String eventName;
	String eventImage;
	String eventcategory;
		
	String stadiumId;
	String stadiumCity;
	String stadiumName;
	String stadiumCapacity;
	String scheduleDate;
	String scheduleTime;
	
	static ArrayList<Schedule> returnEvents=new ArrayList<Schedule>();
	static PreparedStatement statement=null;
	static ResultSet rs=null;
	static String sqlQuery="";
	
	public static ArrayList<Schedule> fetchEvents(){
		returnEvents.clear();
		try{
			Connection con=DBManager.getConnection();
			DBManager.useDataBase(con);
			
			sqlQuery = " select cityName,stadium_name, showDate,scheduleTime," +
					" event_name,event_image,scheduleId, stadium.stadiumId,event_category " +
					" from schedule_match" +
					" INNER JOIN stadium ON stadium.stadiumId = schedule_match.stadiumId" +
					" INNER JOIN city ON stadium.cityId=city.cityId" +
					" INNER JOIN event ON event.event_id=schedule_match.eventID";
			statement=con.prepareStatement(sqlQuery);
			rs=statement.executeQuery();
			while(rs.next()){
				Schedule ev = new Schedule();
				ev.setStadiumCity(rs.getString(1));
				ev.setStadiumName(rs.getString(2));
				ev.setScheduleDate(rs.getString(3));
				ev.setScheduleTime(rs.getString(4));
				ev.setEventName(rs.getString(5));
				ev.setEventImage(rs.getString(6));
				ev.setEventId(rs.getString(7));
				ev.setStadiumId(rs.getString(8));
				ev.setEventcategory(rs.getString(9));
				
				
				
				returnEvents.add(ev);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	
		return returnEvents;
	}

	public String getEventName() {
		return eventName;
	}

	public void setEventName(String eventName) {
		this.eventName = eventName;
	}

	public String getEventImage() {
		return eventImage;
	}

	public void setEventImage(String eventImage) {
		this.eventImage = eventImage;
	}

	public String getEventcategory() {
		return eventcategory;
	}

	public void setEventcategory(String eventcategory) {
		this.eventcategory = eventcategory;
	}

	public String getStadiumCity() {
		return stadiumCity;
	}

	public void setStadiumCity(String stadiumCity) {
		this.stadiumCity = stadiumCity;
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

	public String getScheduleDate() {
		return scheduleDate;
	}

	public void setScheduleDate(String scheduleDate) {
		this.scheduleDate = scheduleDate;
	}

	public String getScheduleTime() {
		return scheduleTime;
	}

	public void setScheduleTime(String scheduleTime) {
		this.scheduleTime = scheduleTime;
	}

	public String getEventId() {
		return eventId;
	}

	public void setEventId(String eventId) {
		this.eventId = eventId;
	}

	public static ArrayList<Schedule> getReturnEvents() {
		return returnEvents;
	}

	public static void setReturnEvents(ArrayList<Schedule> returnEvents) {
		Schedule.returnEvents = returnEvents;
	}

	public String getStadiumId() {
		return stadiumId;
	}

	public void setStadiumId(String stadiumId) {
		this.stadiumId = stadiumId;
	}

	
}
