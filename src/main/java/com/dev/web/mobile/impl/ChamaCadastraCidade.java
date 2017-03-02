package com.dev.web.mobile.impl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.web.mobile.interfaces.Instancia;
import com.dev.web.mobile.util.Constantes;

public class ChamaCadastraCidade implements Instancia {

	public String executa(HttpServletRequest request, HttpServletResponse response) {
		
		return Constantes.raizPages + "cadastro-cidade.jsp";
	}

}
