package com.dev.web.mobile.interfaces;

import java.net.URISyntaxException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Instancia {
	String executa(HttpServletRequest request, HttpServletResponse response) throws URISyntaxException;
}
