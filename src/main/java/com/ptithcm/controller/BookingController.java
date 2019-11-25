package com.ptithcm.controller;

import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ptithcm.entities.Chair;
import com.ptithcm.entities.Customer;
import com.ptithcm.entities.Ticket;
import com.ptithcm.entities.Tour;
import com.ptithcm.models.BookingInfo;
import com.ptithcm.models.BookingSuccessInfo;
import com.ptithcm.models.RouteModel;
import com.ptithcm.models.TicketModel;
import com.ptithcm.models.TourInfor;
import com.ptithcm.service.ChairServiceImp;
import com.ptithcm.service.CustomerServiceimp;
import com.ptithcm.service.RouteServiceImp;
import com.ptithcm.service.TicketServiceImp;
import com.ptithcm.service.TourServiceImp;

@Controller
@RequestMapping("/booking")
public class BookingController {

	@Autowired
	JavaMailSender jms;
	
	@Autowired
	TourServiceImp tsi;

	@Autowired
	RouteServiceImp rsi;
	
	@Autowired
	ChairServiceImp csi;
	
	@Autowired
	CustomerServiceimp cussi;
	
	@Autowired
	TicketServiceImp ticketsi;

	@RequestMapping(method = RequestMethod.GET)
	public String defaultBooking() {
		return "choose-route";
	}
	
	@RequestMapping(value ="changelang", method = RequestMethod.GET)
	@ResponseBody
	public String changeLang(@RequestParam(value = "language") String lang) {
		return "success";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String findTourResult(@RequestParam("departPlace") String start, @RequestParam("destination") String end,
			@RequestParam("departDate") String startDateString, ModelMap modelMap) {

		System.out.println(start + "|" + end + "|" + startDateString);

		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy");
		DateTimeFormatter formatter2 = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		SimpleDateFormat formatter1 = new SimpleDateFormat("yyyy-MM-dd");
		Date date = null;
		try {
			date = formatter1.parse(LocalDate.parse(startDateString, formatter).format(formatter2));
		} catch (ParseException e) {
			// TODO Auto-generated catch blockdd
			e.printStackTrace();
		}


		int idRoute = rsi.getIdByPlace(start, end);
		System.out.println("id route: " + idRoute);

		if (idRoute == -1) {
			return "choose-route";
		} else {
			List<Tour> lt = tsi.getTourByOrder(start, end, date);

			List<TourInfor> lti = getInfoTourToShow(lt);

			RouteModel rm = tsi.getRouteInfoById(idRoute);

			modelMap.addAttribute("resultData", lti);
			modelMap.addAttribute("routeInfo", rm);
			modelMap.addAttribute("departure", start);
			modelMap.addAttribute("destination", end);
			modelMap.addAttribute("dateDeparture", startDateString);
			return "choose-route";
		}

	}
	
	@RequestMapping("{id}")
	public String chooseSeatByIdTour(@PathVariable("id") int id, ModelMap modelMap) {
		
		System.out.println("id="+id);
		List<Chair> lchairs = csi.getListChairById(id);
		
		for (Chair chairs : lchairs) {
			System.out.println(chairs.getName());
		}
		
		
		modelMap.addAttribute("seatAD", getListChairByOder(lchairs, "AD"));
		modelMap.addAttribute("seatBD", getListChairByOder(lchairs, "BD"));
		modelMap.addAttribute("seatCD", getListChairByOder(lchairs, "CD"));
		
		modelMap.addAttribute("seatAT", getListChairByOder(lchairs, "AT"));
		modelMap.addAttribute("seatBT", getListChairByOder(lchairs, "BT"));
		modelMap.addAttribute("seatCT", getListChairByOder(lchairs, "CT"));
		
		modelMap.addAttribute("bookingInfo", new BookingInfo(id));
		
		
		
		return "booking-details";
		
	}
	
	@RequestMapping(value = "/checkout",method = RequestMethod.POST)
	public String bookingDone(@ModelAttribute BookingInfo bm, ModelMap modelMap) {
		
		List<String> lc = formatListChairs(bm.getListSeat());
		
		csi.updateBookingChairs(bm.getId_tour(), lc);
		
		Customer customer = cussi.findByNumberPhone(bm.getNumberPhone());
		if(customer == null) {
			Customer cus = new Customer();
			cus.setNumberPhone(bm.getNumberPhone());
			cus.setEmail(bm.getEmail());
			cus.setFullName(bm.getName());
			cussi.addNew(cus);
			customer = cussi.findByNumberPhone(bm.getNumberPhone());
		}
		
		
		List<Chair> lChair = csi.getListChairByOrder(lc, bm.getId_tour());
		
		List<Ticket> listTicket =  fillDataForBooking(bm, lChair, customer);
		
		listTicket.forEach((ticket)->{
			ticketsi.save(ticket);
		});
		
		BookingSuccessInfo bsi =  getInfoSuccess(bm, customer, listTicket, lChair);
		
		modelMap.addAttribute("bookingInfo", bsi);
		
		sendMailToCustomer(bsi, customer);
		
		return "booking-success";
	}

	public List<TourInfor> getInfoTourToShow(List<Tour> lt) {
		List<TourInfor> lti = new ArrayList<TourInfor>();

		for (Tour tour : lt) {
			TourInfor ti = tsi.getInfoTour(tour.getId());
			ti.setTimeStart(tour.getTime());
			ti.setTimeEnd("timeEnd");
			ti.setCost(tour.getPrice() + "");
			System.out.println(tour.getDepartureDate() + "|" + tour.getTime());

			lti.add(ti);
		}

		return lti;
	}
	

	public List<Chair> getListChairByOder(List<Chair> lChairs, String order){
		List<Chair> lc = new ArrayList<Chair>();
		
		if(order.equals("AD")) {
			lChairs.forEach((chair)->{
				if(chair.getName().matches("^A[1-9]D$")) {
					lc.add(chair);
				}
			});
		}
		else if(order.equals("BD")) {
			lChairs.forEach((chair)->{
				if(chair.getName().matches("^B[1-9]D$")) {
					lc.add(chair);
				}
			});
		}
		else if(order.equals("CD")) {
			lChairs.forEach((chair)->{
				if(chair.getName().matches("^C[1-9]D$")) {
					lc.add(chair);
				}
			});
		}
		else if(order.equals("AT")) {
			lChairs.forEach((chair)->{
				if(chair.getName().matches("^A[1-9]T$")) {
					lc.add(chair);
				}
			});
		}
		else if(order.equals("BT")) {
			lChairs.forEach((chair)->{
				if(chair.getName().matches("^B[1-9]T$")) {
					lc.add(chair);
				}
			});
		}
		else if(order.equals("CT")) {
			lChairs.forEach((chair)->{
				if(chair.getName().matches("^C[1-9]T$")) {
					lc.add(chair);
				}
			});
		}

		return lc;
	}
	
	public List<String> formatListChairs(String lChairs){
		
		List<String> lc = new ArrayList<String>();
		
		String arrc[] = lChairs.split(",");
		
		for(int i = 0; i < arrc.length; i++) {
			if(!arrc[i].trim().equals("") && !arrc[i].isEmpty()) {
				lc.add(arrc[i].trim());
			}
		}
		return lc;
	}
	
	public List<Ticket> fillDataForBooking(BookingInfo bi, List<Chair> lChairs, Customer customer){
		List<Ticket> lticket = new ArrayList<Ticket>();
				
		for(int i = 0; i < lChairs.size(); i++) {
			Ticket t = new Ticket();
			t.setCustomer(customer);
			t.setCreateDate(new Date());
			t.setId_Chair(lChairs.get(i).getId());
			lticket.add(t);
		}
		
		return lticket;
		
	}
	
	public String setupContetnMail(BookingSuccessInfo bsi) {
		String content = "Xin Chào " + bsi.getPassengerName() +"\n";
		content +=("Bạn đã đặt vé thành công " + bsi.getlTicket().size() + " vé. Từ " + bsi.getDeparture() + "  đến  " + bsi.getDestiantion()
		+ "  vào ngày  " + bsi.getDepDate() + "\n");
		content +=("Thông tin vé:\n");
		
		for(int i =0; i< bsi.getlTicket().size(); i++) {
			content += ("Mã vé: " + (bsi.getlTicket()).get(i).getId() + "   Chỗ ngồi:" + (bsi.getlTicket()).get(i).getSeatCode() + "\n");
		}
	
		content += ("Thôn tin liên hệ: Nhà xe: " + bsi.getCompanyName() + " hotline: " + bsi.getCompanyHotline());
	
		
		return content;
	}
	
	public void sendMailToCustomer(BookingSuccessInfo bsi, Customer customer) {
		try {
			MimeMessage mail = jms.createMimeMessage();
			
			MimeMessageHelper helper = new MimeMessageHelper(mail);
			
			helper.setFrom("superntseal@gmail.com");
			helper.setTo(customer.getEmail());
			helper.setReplyTo("noreply@ticketso.com", "TicketsO");
			helper.setSubject("TicketsO-Booking Success");
			helper.setText(setupContetnMail(bsi), true);
			
			jms.send(mail);
			
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}
	}
	
	public BookingSuccessInfo getInfoSuccess(BookingInfo bi, Customer customer, List<Ticket> lTicket, List<Chair> lChair) {
		List<TicketModel> lTicketInfo = new ArrayList<TicketModel>();
		
		for(int i = 0; i < lTicket.size(); i++) {
			TicketModel tm = new TicketModel(lTicket.get(i).getId(), lChair.get(i).getName(), true);
			lTicketInfo.add(tm);
		}
		
		lTicketInfo.forEach((t)->{
			System.out.println(t.toString());
		});
		
		
		Tour tour = tsi.findById(bi.getId_tour());
		
		BookingSuccessInfo bsi = new BookingSuccessInfo(customer.getFullName(), 
							tour.getRoute().getDeparture(),
							tour.getRoute().getDestination(),
							tour.getDepartureDate().toString(),
							"Thanh Tran","0979 277 277", lTicketInfo);
		
		return bsi;
		
	}
}
