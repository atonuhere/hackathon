package edu.iiitb.bookmyshow.action;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import edu.iiitb.bookmyshow.model.City;
import edu.iiitb.bookmyshow.model.DateDisplay;
import edu.iiitb.bookmyshow.model.Movie;
import edu.iiitb.bookmyshow.model.MovieList;
import edu.iiitb.bookmyshow.model.TopMovies;
import edu.iiitb.bookmyshow.model.Schedule;

public class HomePage extends ActionSupport{
	String userName;
	String cityName;
	ArrayList<City>cityList=new ArrayList<City>();
	ArrayList<Schedule> scheduleList=new ArrayList<Schedule>();
	ArrayList<Movie>movieList=new ArrayList<Movie>();
	ArrayList<DateDisplay>dateList=new ArrayList<DateDisplay>();
	ArrayList<MovieList>allMovies=new ArrayList<MovieList>();
	ArrayList<String>returnCityList=new ArrayList<String>();
	ArrayList<String>returnMovieList=new ArrayList<String>();
	ArrayList<String>returnDateList=new ArrayList<String>();
	
	
	public ArrayList<Movie> getMovieList() {
		return movieList;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public void setMovieList(ArrayList<Movie> movieList) {
		this.movieList = movieList;
	}
	ArrayList<TopMovies>topMovieList=new ArrayList<TopMovies>();
	public ArrayList<DateDisplay> getDateList() {
		return dateList;
	}

	public void setDateList(ArrayList<DateDisplay> dateList) {
		this.dateList = dateList;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public ArrayList<TopMovies> getTopMovieList() {
		return topMovieList;
	}
	public void setTopMovieList(ArrayList<TopMovies> topMovieList) {
		this.topMovieList = topMovieList;
	}

	public ArrayList<City> getCityList() {
		return cityList;
	}

	public void setCityList(ArrayList<City> cityList) {
		this.cityList = cityList;
	}
	

	public ArrayList<String> getReturnCityList() {
		return returnCityList;
	}

	public void setReturnCityList(ArrayList<String> returnCityList) {
		this.returnCityList = returnCityList;
	}

	public ArrayList<String> getReturnMovieList() {
		return returnMovieList;
	}

	public void setReturnMovieList(ArrayList<String> returnMovieList) {
		this.returnMovieList = returnMovieList;
	}

	public ArrayList<String> getReturnDateList() {
		return returnDateList;
	}

	public void setReturnDateList(ArrayList<String> returnDateList) {
		this.returnDateList = returnDateList;
	}

	public String execute(){
		if(ActionContext.getContext().getSession().get("userSession")==null){
			addActionError("");
		}
		
		

		return SUCCESS;
	}
	
	public String viewGallery(){
		if(ActionContext.getContext().getSession().get("userSession")==null){
			addActionError("");
		}
		
		
		
		return SUCCESS;
	}
	
	public String scheduleInfo(){
		scheduleList=Schedule.fetchEvents();
		return SUCCESS;
	}
	
	public String viewFood(){
		return SUCCESS;
	}
	
	public String parkingMap(){
		
		
		return SUCCESS;
	}
	public String parkingBooking(){
				
		return SUCCESS;
	}
	public String hotels(){
		
		return SUCCESS;
	}
	public String travels(){
		
		return SUCCESS;
	}
	

	public ArrayList<Schedule> getScheduleList() {
		return scheduleList;
	}

	public void setScheduleList(ArrayList<Schedule> scheduleList) {
		this.scheduleList = scheduleList;
	}
	
	
	
}
