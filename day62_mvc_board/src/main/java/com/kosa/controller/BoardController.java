package com.kosa.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardController extends HttpServlet{ // super Controller
	/* extends HttpServlet가 있어야 doGet, doPost를 부를 수 있다. */
	
	@Override
	protected void doGet(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException {
		process(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException {
		process(req, resp);
	} 

	protected void process(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	} 



}
