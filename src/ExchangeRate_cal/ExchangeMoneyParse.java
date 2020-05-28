package ExchangeRate_cal;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

public class ExchangeMoneyParse {
	private MoneyDTO USA, JAP, EUR, CHI, ENG, AUS, CAN, NEW;
	
	public ExchangeMoneyParse() throws IOException {

		System.out.println("모징");
		Document doc;
		doc = Jsoup.connect("https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%ED%99%98%EC%9C%A8").get();
		Elements el = doc.getElementsByClass("rate_table_bx _table");
		el = el.select("td");
			
		String str = el.toString();
		str = str.replace("<td><span>", "");
		str = str.replace("</em></td>", "");
		str = str.replace("<td class=\"flu_nm\"><span class=\"blind\">", "");
		str = str.replace("전일대비</span><span class=\"ico\">상승</span><em>", "");
		str = str.replace("전일대비</span><span class=\"ico\">하락</span><em>", "");
		str = str.replace("<td class=\"flu_pct\"><span>", "");
		str = str.replace("</span></td>", "");
		String[] lst = str.split("\n");
			
		//미국 일본 유럽연합 중국 영국 호주 캐나다 뉴질랜드
		USA = new MoneyDTO(Double.parseDouble(lst[0].replace(",", "")));
		JAP = new MoneyDTO(Double.parseDouble(lst[3].replace(",", "")));
		EUR = new MoneyDTO(Double.parseDouble(lst[6].replace(",", "")));
		CHI = new MoneyDTO(Double.parseDouble(lst[9].replace(",", "")));
		ENG = new MoneyDTO(Double.parseDouble(lst[12].replace(",", "")));
		AUS = new MoneyDTO(Double.parseDouble(lst[15].replace(",", "")));
		CAN = new MoneyDTO(Double.parseDouble(lst[18].replace(",", "")));
		NEW = new MoneyDTO(Double.parseDouble(lst[21].replace(",", "")));
	}
	
	public double getUSA() { return USA.getMoney(); }
	public double getJAP() { return JAP.getMoney(); }
	public double getEUR() { return EUR.getMoney(); }
	public double getCHI() { return CHI.getMoney(); }
	public double getENG() { return ENG.getMoney(); }
	public double getAUS() { return AUS.getMoney(); }
	public double getCAN() { return CAN.getMoney(); }
	public double getNEW() { return NEW.getMoney(); }
}
