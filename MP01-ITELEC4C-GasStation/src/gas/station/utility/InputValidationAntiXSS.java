package gas.station.utility;

public class InputValidationAntiXSS {

	public static void main(String[] args) {   	
		
	}
		 
	public static final String stringToHtmlString(String s){
        StringBuffer sb = new StringBuffer();
        int n = s.length();
        for (int i = 0; i < n; i++) {
           char c = s.charAt(i);
           switch (c) {
              case '<': sb.append("&lt;"); break;
              case '>': sb.append("&gt;"); break;
              case '&': sb.append("&amp;"); break;
              case '"': sb.append("&quot;"); break;
              default:  sb.append(c); break;
           }
        }
        return sb.toString();
     }
	
}
