package Product;

import java.io.Serializable;

public class Coffee implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String code;
	private String description;
	private double price;
	private String origin;
	private String roast;
	private String flavor;
	private String aroma;
	private String acidity;
	private String body;
	
	private int amount;
	
	
	
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getOrigin() {
		return origin;
	}
	public void setOrigin(String origin) {
		this.origin = origin;
	}
	public String getRoast() {
		return roast;
	}
	public void setRoast(String roast) {
		this.roast = roast;
	}
	public String getFlavor() {
		return flavor;
	}
	public void setFlavor(String flavor) {
		this.flavor = flavor;
	}
	public String getAroma() {
		return aroma;
	}
	public void setAroma(String aroma) {
		this.aroma = aroma;
	}
	public String getAcidity() {
		return acidity;
	}
	public void setAcidity(String acidity) {
		this.acidity = acidity;
	}
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}

	
	
	public Coffee(String code, String description, double price,String origin, String roast, String flavor, String aroma, String acidity, String body,int amount){
		this.setCode(code);
		this.setDescription(description);
		this.setPrice(price);
		this.setOrigin(origin);
		this.setRoast(roast);
		this.setAcidity(acidity);
		this.setFlavor(flavor);
		this.setBody(body);
		this.setAroma(aroma);
		this.setAmount(amount);
	}


}
