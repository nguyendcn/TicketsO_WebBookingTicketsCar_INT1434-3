package com.ptithcm.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ptithcm.entities.Chair;
import com.ptithcm.entities.Customer;
import com.ptithcm.entities.Ticket;
import com.ptithcm.models.HistoryBooking;
import com.ptithcm.models.InfoFind;
import com.ptithcm.models.TicketInfoFound;
import com.ptithcm.models.TicketModel;
import com.ptithcm.service.ChairServiceImp;
import com.ptithcm.service.CustomerServiceimp;
import com.ptithcm.service.TicketServiceImp;

@Controller
@RequestMapping("/TicketInfo")
public class TicketInfoController {

	@Autowired
	CustomerServiceimp csi;
	
	@Autowired
	TicketServiceImp ticketsi;
	
	@Autowired
	ChairServiceImp chairsi;
	
	@RequestMapping(method=RequestMethod.GET)
	public String initPage(ModelMap modelMap) {
		
		TicketInfoFound tif = new TicketInfoFound();
		HistoryBooking hb = new HistoryBooking();
		InfoFind inf = new InfoFind();
		
		modelMap.addAttribute("infoFind", inf);
		modelMap.addAttribute("bookingInfo", tif);
		modelMap.addAttribute("historyBooking", hb);
		
		return "tickets-info";
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public String getInfo(@ModelAttribute("infoFind") InfoFind inf, ModelMap modelMap) {
		
		TicketInfoFound tif = new TicketInfoFound();
		HistoryBooking hb = new HistoryBooking();
		
		
		if(inf.getTicketCode().trim() != "") {
			try {
				
				int ticketCode = Integer.parseInt(inf.getTicketCode());
				
				Ticket ticket = ticketsi.findById(ticketCode);
				
				TicketModel ticketmodel = new TicketModel();
				Chair chair = chairsi.findById(ticket.getId_Chair());
				
				
				ticketmodel.setId(ticket.getId());
				ticketmodel.setSeatCode(chair.getName());
				ticketmodel.setStatus(chair.getStatus_id() >= 1?true:false);
				
				tif.setTicketInfo(ticketmodel);

				tif.setDeparture(chair.getTour().getRoute().getDeparture());
				tif.setDestiantion(chair.getTour().getRoute().getDestination());
				tif.setDepDate(chair.getTour().getDepartureDate().toString());
				
				tif.setPassengerName(ticket.getCustomer().getFullName());
				tif.setPassengerEmail(ticket.getCustomer().getEmail());
				tif.setPassengerNumberPhone(ticket.getCustomer().getNumberPhone());
				
				tif.setCompanyName(chair.getTour().getBus().getTransportationBusiness().getName());
				tif.setCompanyHotline(chair.getTour().getBus().getTransportationBusiness().getHotline());
				
				tif.setIsFail(false);
				
			}catch(Exception ex) {
				System.err.println(ex.getMessage());
				tif.setIsFail(true);
			}
			
		}
		
		if(inf.getNumberPhone().trim() != "") {
			try {
				Customer customer = csi.findByNumberPhone(inf.getNumberPhone().trim());
				
				hb.setPassengerName(customer.getFullName());
				hb.setPassengerEmail(customer.getEmail());
				hb.setPassengerNumberPhone(customer.getNumberPhone());				

				List<Ticket> lTicket = ticketsi.getTicketByIdCustomer(customer.getId());			
				
				hb.setlTicket(new ArrayList<TicketModel>());

				for(int i = 0; i < lTicket.size(); i++) {
					TicketModel tModel = new TicketModel();
					
					tModel.setId(lTicket.get(i).getId());
					
					Chair chair = chairsi.findById(lTicket.get(i).getId_Chair());
					tModel.setSeatCode(chair.getName());
					tModel.setStatus(chair.getStatus_id() >=1?true:false);
									
					hb.getlTicket().add(tModel);
				}
				
				hb.setIsFail(false);
								
			}catch(Exception ex){
				System.out.println(ex.getMessage());
				hb.setIsFail(true);
			}
		}
		
		modelMap.addAttribute("bookingInfo", tif);
		modelMap.addAttribute("historyBooking", hb);
		
		return "tickets-info";
	}
}
