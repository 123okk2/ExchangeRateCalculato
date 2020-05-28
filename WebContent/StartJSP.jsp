<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>환전 입력창</title>
</head>
<body>
	<form method = "post" name="inputSection" action = "ExchangeRateMain">
		<h1 style = "text-align:center"> 환전 입력 </h1>
		<table align = "center">
			<tr>
				<td width = "100">
					<p align = "right"> 소유한 화폐 </p>
				</td>
				<td width = "100">
					<input type = "number" align = "right" name = "inputMoney">
				</td>
				<td width = "100">
					<select name = "inputMoneyType">
						<option value="KOR" selected>원</option>
						<option value="USA">달라(미국)</option>
						<option value="JAP">엔(일본)</option>
						<option value="EUR">유로(유럽연합)</option>
						<option value="CHI">원(중국)</option>
						<option value="ENG">파운드(영국)</option>
						<option value="AUS">달라(호주)</option>
						<option value="CAN">달라(캐나다)</option>
						<option value="NEW">달라(뉴질랜드)</option>
					</select>
				</td>
			</tr>
			
			<tr>
				<td width = "100">
					<p align = "right"> 환전할 화폐 </p>
				</td>
				<td width = "100">
					<select name = "outputMoneyType">
						<option value="KOR">원</option>
						<option value="USA" selected>달라(미국)</option>
						<option value="JAP">엔(일본)</option>
						<option value="EUR">유로(유럽연합)</option>
						<option value="CHI">원(중국)</option>
						<option value="ENG">파운드(영국)</option>
						<option value="AUS">달라(호주)</option>
						<option value="CAN">달라(캐나다)</option>
						<option value="NEW">달라(뉴질랜드)</option>
					</select>
				</td>
			</tr>
			
			<tr>
				<td width = "150" align = "right">
					<input type = "submit" value = "금액 확인" align = "right">	
				</td>
				<td width = "150">
					<input type = "reset" value = "다시 입력">
				</td>
			</tr>
		
	</form>
</body>
</html>