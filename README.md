# ExchangeRateCalculator
환율 계산기 : JSP, Servlet, Jsoup 연습
  
# 구동
jsp(view)에서 숫자와 나라를 선택하면 네이버에서 환율 정보를 크롤링해와서 출력
  
# UI
![11](https://user-images.githubusercontent.com/51351974/83138852-64314080-a126-11ea-8940-2387a7f51a8a.jpg)
![22](https://user-images.githubusercontent.com/51351974/83138857-65626d80-a126-11ea-8de6-e36f360734f9.jpg)
  
# Tip
dynamic web project 에서 jsoup.jar 이용시 클래스를 찾을 수 없다고 함  
java.lang.NoClassDefFoundError: org/jsoup/Jsoup  
그럴때는 WebContent/WEB-INF/lib에 넣어주면 됨  
  
servlet -> jsp 로 forward 할 떄 한글이 깨지는 경우가 발생하는데 해결법을 모르겠음 (나중에 찾자)
  
Servlet -> jsp 로 넘어갈 때는 forward 혹은 redirect 사용  
1. forward  
RequestDispatcher dispatcher = request.getRequestDispatcher(url);  
dispatcher.forward(request, response);  
  
2. sendRedirect  
response.sendRedirect(url);  

쉽게 비교하면 forward는 post, sendRedirect는 get  
forward는 페이지 이동이 시스템에 영향을 미치지 않을 때(조회)  
redirect는 페이지 이동이 시스템에 영향을 미칠 때 (저장)  
이유 : get으로 할 때 새로고침 누르면 한번 더 저장되니까
