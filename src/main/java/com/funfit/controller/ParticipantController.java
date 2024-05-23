package com.funfit.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.funfit.bean.Participant;
import com.funfit.service.ParticipantService;

/**
 * Servlet implementation class ParticipantController
 */
@WebServlet("/ParticipantController")
public class ParticipantController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	ParticipantService ps = new ParticipantService();
    public ParticipantController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter pw = response.getWriter();
		HttpSession hs = request.getSession();
		List<Participant> listOfParticipants = ps.viewAllParticipants();
		hs.setAttribute("participants", listOfParticipants);
		response.sendRedirect("ViewParticipants.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html");
		String fname = request.getParameter("fname");
		int age = Integer.parseInt(request.getParameter("age"));
		String phonenumber = request.getParameter("phonenumber");
		int bid = Integer.parseInt(request.getParameter("bid"));
		Participant p = new Participant();
		p.setFname(fname);
		p.setAge(age);
		p.setPhonenumber(phonenumber);
		p.setBid(bid);
		String result = ps.addParticipant(p);
		RequestDispatcher rd = request.getRequestDispatcher("AddParticipant.jsp");
		pw.print(result);
		rd.include(request, response);
	}

}
