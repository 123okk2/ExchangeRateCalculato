<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ȯ�� �Է�â</title>
</head>
<body>
	<form method = "post" name="inputSection" action = "ExchangeRateMain">
		<h1 style = "text-align:center"> ȯ�� �Է� </h1>
		<table align = "center">
			<tr>
				<td width = "100">
					<p align = "right"> ������ ȭ�� </p>
				</td>
				<td width = "100">
					<input type = "number" align = "right" name = "inputMoney">
				</td>
				<td width = "100">
					<select name = "inputMoneyType">
						<option value="KOR" selected>��</option>
						<option value="USA">�޶�(�̱�)</option>
						<option value="JAP">��(�Ϻ�)</option>
						<option value="EUR">����(��������)</option>
						<option value="CHI">��(�߱�)</option>
						<option value="ENG">�Ŀ��(����)</option>
						<option value="AUS">�޶�(ȣ��)</option>
						<option value="CAN">�޶�(ĳ����)</option>
						<option value="NEW">�޶�(��������)</option>
					</select>
				</td>
			</tr>
			
			<tr>
				<td width = "100">
					<p align = "right"> ȯ���� ȭ�� </p>
				</td>
				<td width = "100">
					<select name = "outputMoneyType">
						<option value="KOR">��</option>
						<option value="USA" selected>�޶�(�̱�)</option>
						<option value="JAP">��(�Ϻ�)</option>
						<option value="EUR">����(��������)</option>
						<option value="CHI">��(�߱�)</option>
						<option value="ENG">�Ŀ��(����)</option>
						<option value="AUS">�޶�(ȣ��)</option>
						<option value="CAN">�޶�(ĳ����)</option>
						<option value="NEW">�޶�(��������)</option>
					</select>
				</td>
			</tr>
			
			<tr>
				<td width = "150" align = "right">
					<input type = "submit" value = "�ݾ� Ȯ��" align = "right">	
				</td>
				<td width = "150">
					<input type = "reset" value = "�ٽ� �Է�">
				</td>
			</tr>
		
	</form>
</body>
</html>