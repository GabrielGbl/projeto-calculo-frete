package com.dev.web.mobile.impl;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.web.mobile.dao.CityDAO;
import com.dev.web.mobile.interfaces.Instancia;
import com.dev.web.mobile.model.City;
import com.dev.web.mobile.model.Frete;
import com.dev.web.mobile.util.Constantes;

public class CadastraCidade implements Instancia {
	private static final CityDAO cityDAO = CityDAO.getInstance();
	public CadastraCidade() {
		
		
	}

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) {
		City city = new City();
		


		city.setNome( request.getParameter("nome"));
		city.setGeocodigo( Double.valueOf( request.getParameter( "geocodigo" ) ) );
		city.setLatitude( Double.valueOf( request.getParameter( "latitude" ) ) );
		city.setLongitude( Double.valueOf( request.getParameter( "longitude" ) ) );
		
		
		try {
			cityDAO.insert(city);
		} catch (ClassNotFoundException | SQLException | IOException e) {
			System.out.println(e.toString());
		}
		return Constantes.raizPages + "cadastro-cidade.jsp";
	}
}