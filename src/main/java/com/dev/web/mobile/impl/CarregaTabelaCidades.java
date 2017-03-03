package com.dev.web.mobile.impl;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.web.mobile.dao.CityDAO;
import com.dev.web.mobile.interfaces.Instancia;
import com.dev.web.mobile.model.City;
import com.dev.web.mobile.util.Constantes;

public class CarregaTabelaCidades implements Instancia {
	private static final CityDAO cityDAO = CityDAO.getInstance();
	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) {
		ArrayList< City > citys = new ArrayList< City >();
		
		
		try {
			citys = cityDAO.getAllCity();
		} catch (ClassNotFoundException | SQLException | IOException e) {
			System.out.println(e.toString());
		}
		
	    request.setAttribute("citys", citys);
	    //request.getRequestDispatcher("cadastro-cidade.jsp").forward(request, response);
		return Constantes.raizPages + "cadastro-cidade.jsp";
	}
}
