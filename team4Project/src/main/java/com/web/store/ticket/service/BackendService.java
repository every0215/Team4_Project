package com.web.store.ticket.service;

import java.util.ArrayList;
import java.util.List;

import com.web.store.ticket.model.Attraction;
import com.web.store.ticket.model.Event;
import com.web.store.ticket.model.Exhibition;
import com.web.store.ticket.model.Price;
import com.web.store.ticket.model.Sport;
import com.web.store.ticket.model.SportSession;
import com.web.store.ticket.model.SportSeat;

public interface BackendService {
	
	public ArrayList<Integer> addEvent(Event event,Exhibition exhibition,Attraction attraction,Sport sport, ArrayList<Price> priceList);
	public void updateEvent(Event event,Exhibition exhibition,Attraction attraction,Sport sport, List<Price> priceList);
	public Event queryOneEvent(int id);
	public ArrayList<Event> getEventsBytypeId(int typeId);
	public ArrayList<Event> queryAll();
	public void delete(int id);
//	public void addAttraction(Attraction attraction);
	public void updateAttraction(Attraction attraction);
	public Attraction queryOneAttraction(int id);
	public Attraction selectAttractionByEvent(int eventId);
//	public void addExhibition(Exhibition exhibition);
	public void updateExhibition(Exhibition exhibition);
	public Exhibition queryOneExhibition(int id);
	public Exhibition selectExhibitionByEvent(int eventId);
	public void addPrice(Price price);
	public List<Price> selectPriceList(int eventid);
	public void deletePriceList(int eventId);
	public void addSportSession(Sport sport,SportSession sportSession);
	public ArrayList<SportSession> selectBySport(int sportId);
	public void addSportSeat(SportSeat sportSeat);
}