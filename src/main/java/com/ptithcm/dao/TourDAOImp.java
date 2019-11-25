package com.ptithcm.dao;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ptithcm.entities.Chair;
import com.ptithcm.entities.Route;
import com.ptithcm.entities.Tour;
import com.ptithcm.models.RouteModel;
import com.ptithcm.models.TourInfor;

@Repository()
@Transactional()
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class TourDAOImp implements DAOBase<Tour>{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Tour> findAll() {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("From Tour", Tour.class).getResultList();
	}

	@Override
	public Tour findById(int id) {
		Session session = sessionFactory.getCurrentSession();
		return session.find(Tour.class, id);
	}

	@Override
	public void save(Tour entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Tour entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Tour entity) {
		// TODO Auto-generated method stub
		
	}
	
	public TourInfor getInfoTour(int id) {
		Session session = sessionFactory.getCurrentSession();
		

		TourInfor tourInfor = new TourInfor(id, getTransBusNameById(id, session),
				"", 
				"", 
				getNameTypeBusById(id, session), 
				getAvaliableChair(id, session) + "",
				"");
		
		return tourInfor;
	}
	

	public RouteModel getRouteInfoById(int id) {
			Session session = sessionFactory.getCurrentSession();
			
		String query = "\n" + 
				"from Route r\n" + 
				"where r.id = (\n" + 
				"select t.route.id as  dd\n" + 
				"from Tour t\n" + 
				"where t.id = '" + id + "')";
		System.out.println("Get route:");
	
		Route rt = session.createQuery(query, Route.class).getSingleResult();
		return new RouteModel(rt.getDeparture(), rt.getDestination(), rt.getTotalTime(), rt.getDistance() + "");
	}
	
	public String getTransBusNameById(int id, Session ss) {
		String query = "select t.name\n" + 
				"from TransportationBusiness t \n" + 
				"where t.id = (\n" + 
				"select b.transportationBusiness.id as dd\n" + 
				"from Tour to, Bus b\n" + 
				"where to.bus.id = b.id And to.id = '" + id + "')";
		
		System.out.println("Name Trans Business Bus");
		String xf = ss.createQuery(query).getResultList().get(0).toString();
		System.out.println("x=" + xf);
		return xf;
	}
	
	public String getNameTypeBusById(int id, Session ss) {
		String query= "select bt.name\n" + 
				"from BusType bt\n" + 
				"where bt.id = (\n" + 
				"select b.busType.id as  dd\n" + 
				"from Tour to, Bus b\n" + 
				"where to.bus.id = b.id And to.id = '" + id + "')";
		//ss.createNativeQuery(query, String.class);
		System.out.println("Name Type Bus");
		String xf = ss.createQuery(query).getResultList().get(0).toString();
		System.out.println("x=" + xf);
		return xf;
	}
	
	public int getAvaliableChair(int tour_id, Session ss) {
		String query = "select COUNT(*)\n" + 
				"from Chair c\n" + 
				"where c.tour.id = '" + tour_id + "' and c.status_id = '1'";
		
		System.out.println("Chair Quantity");
		Long xf = ss.createQuery(query, Long.class).getResultList().get(0);
		System.out.println("x=" + xf);
		return xf.intValue();
	}
	
	public List<Tour> getTourByOrder(String start, String end, Date date){
		Session session = sessionFactory.getCurrentSession();
		
		
		String dateCompare = handDate(date);
		if(dateCompare == "")
			return new ArrayList<Tour>();
		
		System.out.println("Date compare: " + dateCompare + "|Start: " + start + "|End: " + end);
		
		String queryString = "select t from Tour t, Route r  where t.route.id = r.id and \n" + 
				"((r.departure = '" + start + "' and r.destination = '" + end + 
				"') and (t.departureDate = '"+ dateCompare +"'))";
		
		return  session.createQuery(queryString, Tour.class).getResultList();
	
	}
	

	
	public String handDate(Date date) {
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"); 
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		LocalDateTime now = LocalDateTime.now();
		
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");  
        String strDate = dateFormat.format(date);  
        
		String arrDate[] = now.format(dtf).split(" ");
		
		try {
			if(date.compareTo(sdf.parse(arrDate[0])) == 0)
				return (strDate + " " + arrDate[1]);
			else
				return strDate;
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "";
	}
	

}
