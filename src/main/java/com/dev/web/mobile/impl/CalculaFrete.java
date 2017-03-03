package com.dev.web.mobile.impl;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.web.mobile.dao.CityDAO;
import com.dev.web.mobile.interfaces.Instancia;
import com.dev.web.mobile.model.City;
import com.dev.web.mobile.model.Frete;
import com.dev.web.mobile.util.Constantes;

public class CalculaFrete implements Instancia {
	private static final CityDAO cityDAO = CityDAO.getInstance();
	
	public CalculaFrete() {
	}

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) {
		double geocodigoA = new Double(request.getParameter("geocodigoA"));
		double geocodigoB = new Double(request.getParameter("geocodigoB"));
		double distance = 0;
		
		City cityA = new City();
		City cityB = new City();
		CityDistanceCalculate citysDistance = new CityDistanceCalculate();
		
		try {
			cityA = cityDAO.getCityByGeocodigo(geocodigoA);
			cityB = cityDAO.getCityByGeocodigo(geocodigoB);			
			distance = citysDistance.calculateDistanceInKilometers(cityA, cityB);
		} catch (ClassNotFoundException | SQLException | IOException e) {
			System.out.println(e.toString());
		}
		
		// TODO Realizar aqui todo o processo de consulta ao BD e após 
		// retornar para a página que será exibido os valores;		
		Frete frete = new Frete();
		frete.setPontoA(cityA.getNome());
		frete.setPontoB(cityB.getNome());
		frete.setDistancia(distance);
		frete.calculaValorFrete();
		
		ArrayList< Frete > calculo = new ArrayList< Frete >();
		calculo.add(frete);
		
		request.setAttribute("calculo", calculo);
		return Constantes.raizPages + "calcular-frete.jsp";
	}

}
