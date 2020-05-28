<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>환전 결과</title>
</head>
<body>
	<%
		request.setCharacterEncoding("EUC-KR");
		//response.setCharacterEncoding("EUC-KR");

		String inputMoney = request.getAttribute("inputMoney").toString();
		String inputMoneyType = request.getAttribute("inputMoneyType").toString();
		String outputMoneyType = request.getAttribute("outputMoneyType").toString();
		String answer = String.format("%.2f", (double) request.getAttribute("answer"));
		
		switch(inputMoneyType) {
		case "USA" :
			inputMoneyType = "Amrican dollors";
			break;
		case "JAP" : 
			inputMoneyType = "Japanese yen";
			break;
		case "EUR" :
			inputMoneyType = "European Euro";
			break;
		case "CHI" :
			inputMoneyType = "Chinese won";
			break;
		case "ENG" :
			inputMoneyType = "English Pennis";
			break;
		case "AUS" :
			inputMoneyType = "Austrailian dollors";
			break;
		case "CAN" :
			inputMoneyType = "Canadian dollors";
			break;
		case "NEW" :
			inputMoneyType = "New Zealand dollors";
			break;
		default :
			inputMoneyType = "Korean won";
		}
		
		switch(outputMoneyType) {
		case "USA" :
			outputMoneyType = "Amrican dollors";
			break;
		case "JAP" : 
			outputMoneyType = "Japanese yen";
			break;
		case "EUR" :
			outputMoneyType = "European Euro";
			break;
		case "CHI" :
			outputMoneyType = "Chinese won";
			break;
		case "ENG" :
			outputMoneyType = "English Pennis";
			break;
		case "AUS" :
			outputMoneyType = "Austrailian dollors";
			break;
		case "CAN" :
			outputMoneyType = "Canadian dollors";
			break;
		case "NEW" :
			outputMoneyType = "New Zealand dollors";
			break;
		default :
			outputMoneyType = "Korean won";
		}
	%>
	<% //한글 출력이 안된다 ㅠㅠㅠ  %>
	<h1 style = "text-align:center"> Result </h1>
	<h3 style = "text-align:center"><%=inputMoney %> <%=inputMoneyType %> will be exchanged for</h3> 
	<h3 style = "text-align:center"><%=answer %> <%=outputMoneyType %>.</h3>
</body>
</html>