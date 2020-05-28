package ExchangeRate_cal;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ExchangeRateMain
 */
@WebServlet("/ExchangeRateMain")
public class ExchangeRateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExchangeRateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		request.setCharacterEncoding("EUC-KR");
		response.setCharacterEncoding("EUC-KR");
		//response.setContentType("text/html; charset=EUC-KR");
		
		double inputMoney = Double.parseDouble(request.getParameter("inputMoney").toString());
		String inputMoneyType = request.getParameter("inputMoneyType").toString();
		String outputMoneyType = request.getParameter("outputMoneyType").toString();
		
		System.out.println(inputMoney + inputMoneyType + " " + outputMoneyType);
		
		
		try {
			ExchangeMoneyParse emp = new ExchangeMoneyParse();
			double moneyInput = getMoneyRate(emp, inputMoneyType);
			double moneyOutput = getMoneyRate(emp, outputMoneyType);
			
			double answer = inputMoney * moneyInput / moneyOutput;

			System.out.println("input 환율 : " + moneyInput + " : 1");
			System.out.println("output 환율 : " + moneyOutput + " : 1");
			System.out.println("결과 : " + answer);

			request.setAttribute("answer", answer);
			request.setAttribute("inputMoney", inputMoney);
			request.setAttribute("inputMoneyType", inputMoneyType);
			request.setAttribute("outputMoneyType", outputMoneyType);
			RequestDispatcher rd = request.getRequestDispatcher("/EndJSP.jsp");
			
			rd.forward(request, response);
		}
		catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	public double getMoneyRate(ExchangeMoneyParse emp, String country) {
		switch(country) {
		case "USA" :
			return emp.getUSA();
		case "JAP" : 
			return emp.getJAP();
		case "EUR" :
			return emp.getEUR();
		case "CHI" :
			return emp.getCHI();
		case "ENG" :
			return emp.getENG();
		case "AUS" :
			return emp.getAUS();
		case "CAN" :
			return emp.getCAN();
		case "NEW" :
			return emp.getNEW();
		}
		
		return 1;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
