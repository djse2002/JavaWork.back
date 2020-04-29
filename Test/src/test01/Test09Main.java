package test01;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.Scanner;

import org.jsoup.Connection.Response;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class Test09Main {

	public static void main(String[] args) throws IOException {
		System.out.println("네이버 연관 검색어");
		
		String url;
		Document doc; 
		Response response;
		Element element;
		 

		url = "https://movie.naver.com/movie/sdb/rank/rmovie.nhn";
		response = Jsoup.connect(url).execute();
		System.out.println(response.statusCode());
		doc = response.parse();
		
		Elements favor_elements =  doc.select("div.assistant");
		System.out.println(favor_elements.size() + " 개");
		
		for(Element e : favor_elements) {
			System.out.println(e.text().trim());
			System.out.println(e.attr("href").trim());
		}
		
		
		
		
		System.out.println("\n프로그램 종료");
	} // end main()

} // end class













