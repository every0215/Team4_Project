package com.web.store.ticket.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BaseController {
	
	@GetMapping("/ticket/InputPageEX")
	public String InputPageEX() {
		return "ticket/InputPageEX";
	}
	
	@GetMapping("/ticket/InputPageAT")
	public String InputPageAT() {
		return "ticket/InputPageAT";
	}
	
	@GetMapping("/ticket/InputPageSP")
	public String InputPageSP() {
		return "ticket/InputPageSP";
	}
	
	@GetMapping("/ticket/ShowPageEX")
	public String ShowPageEX() {
		return "ticket/ShowPageEX";
	}
	
	@GetMapping("/ticket/ShowPageAT")
	public String ShowPageAT() {
		return "ticket/ShowPageAT";
	}
	
	@GetMapping("/ticket/ShowPageSP")
	public String ShowPageSP() {
		return "ticket/ShowPageSP";
	}
	
	@GetMapping("/ticket/CTicketSort")
	public String TicketSort() {
		return "ticket/CTicketSort";
	}
	
	@GetMapping("/ticket/CTicketSearch")
	public String TicketSearch() {
		return "/ticket/CTicketSearch";
	}
	
	@GetMapping("member/ticketOrder")
	public String test() {
		return "account/ticketOrder";
	}
	
}
