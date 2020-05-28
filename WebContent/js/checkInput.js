/**
 * 
 */

function clickSubmit() {
	var doc = document.inputSection;
	var inputMoney = document.inputMonery;
	var inputMoneyType = document.inputMoneyType;
	var outputMoneyType = document.outputMoneyType;
	
	if(inputMoney == "" || inputMoney.length == 0) alert("금액을 입력하세요.")
	else if (inputMoneyType == outputMoneyType) alert("단위가 같습니다.")
	else doc.submit();
}