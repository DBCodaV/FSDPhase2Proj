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

import com.funfit.bean.Batch;
import com.funfit.service.BatchService;

/**
 * Servlet implementation class BatchController
 */
@WebServlet("/BatchController")
public class BatchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	BatchService bs = new BatchService();
    public BatchController() {
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
		List<Batch> listOfBatch = bs.viewAllBatch();
		hs.setAttribute("batches",listOfBatch);
		String flagValue = request.getParameter("flag");
		if(flagValue.equals("2")) {
			response.sendRedirect("AddParticipant.jsp");
		} else {
			response.sendRedirect("ViewBatches.jsp");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html");
		String typeofbatch = request.getParameter("typeofbatch");
		String time = request.getParameter("time");
		RequestDispatcher rd = request.getRequestDispatcher("AddBatch.jsp");
		Batch bb = new Batch();
		bb.setTypeofbatch(typeofbatch);
		bb.setTime(time);
		String result = bs.addBatch(bb);
		pw.println(result);
		rd.include(request, response);
	}

}
