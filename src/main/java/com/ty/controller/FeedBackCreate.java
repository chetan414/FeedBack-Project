package com.ty.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ty.service.FeedBackService;
import com.ty.dto.FeedBack;

@WebServlet(value = "/createfeedback")
public class FeedBackCreate extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String particepatename = req.getParameter("pname");
		String ratting = req.getParameter("ratting");
		String description = req.getParameter("description");

		FeedBack feedBack = new FeedBack();
		feedBack.setParticepateName(particepatename);
		feedBack.setRatings(ratting);
		feedBack.setDescription(description);

		FeedBackService feedBackService = new FeedBackService();
		FeedBack feedBack2 = feedBackService.createFeedBack(feedBack);
		if (feedBack2 != null) {
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("viewfeedback");
			requestDispatcher.forward(req, resp);
		} else {
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("FeedBackCreate.jsp");
			requestDispatcher.include(req, resp);
		}
	}
}
