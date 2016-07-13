package converter;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.util.StringUtils;
import org.w3c.dom.*;
import javax.xml.parsers.*;
import java.io.*;
import java.math.BigDecimal;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;


@Controller
public class HomeController {

	@RequestMapping("/")
	public String getTimeZone(Model model){
		String timeStamp = new SimpleDateFormat("MMMM dd YYYY HH:mm z", Locale.ENGLISH).format(new Date());
		model.addAttribute("date", timeStamp);
		
		return "index";
	}
	
	
	@RequestMapping("/lol")
	public String parseXml(Model model){
		 Map<String, BigDecimal> converter = new HashMap<String, BigDecimal>();
    	 try {	
    		 
    		 
    		 URL url = new URL("http://www.ecb.europa.eu/stats/eurofxref/eurofxref-daily.xml");
    		 DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
    		 DocumentBuilder db = dbf.newDocumentBuilder();
    		 Document doc = db.parse(url.openStream());
    		 doc.getDocumentElement().normalize();
    		 
           /*  File inputFile = new File("bank.xml");
             DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
             DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
             Document doc = dBuilder.parse(inputFile);
             doc.getDocumentElement().normalize();*/
             
             NodeList nList = doc.getElementsByTagName("Cube");
             for (int temp = 0; temp < nList.getLength(); temp++) {
                Node nNode = nList.item(temp);
                if (nNode.getNodeType() == Node.ELEMENT_NODE) {
                   Element eElement = (Element) nNode;
                   if (!StringUtils.isEmpty(eElement.getAttribute("currency")) && !StringUtils.isEmpty(eElement.getAttribute("rate")) )
                   {
                   converter.put(eElement.getAttribute("currency"),new BigDecimal(eElement.getAttribute("rate")));
               //    System.out.println("Currency : "  + eElement.getAttribute("currency"));
               //    System.out.println("Rate : "  + eElement.getAttribute("rate"));    
                  }
                }
             }
          } catch (Exception e) {
             e.printStackTrace();
          }
		model.addAttribute("parseXml", converter);
		
		return "index";
	}
	
	
}
