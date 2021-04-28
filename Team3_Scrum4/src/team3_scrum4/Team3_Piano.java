/* By Colton Sherwood 4/28/2021 */

package team3_scrum4;
import java.text.NumberFormat;

public class Team3_Piano {
	private String name;
	private int numberOfKeys;
	private double price;
	
	// default constructor
	public Team3_Piano () {
		setName("Piano");
		setNumberOfKeys(88);
		setPrice(99.99);
	}
	
	// parameterized constructor
	public Team3_Piano(String name, int keys, double price) {
		setName(name);
		setNumberOfKeys(keys);
		setPrice(price);
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getNumberOfKeys() {
		return numberOfKeys;
	}
	public void setNumberOfKeys(int numberOfKeys) {
		this.numberOfKeys = numberOfKeys;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
	public String getFormattedPrice()
	{
		NumberFormat currency = NumberFormat.getCurrencyInstance();
		return currency.format(getPrice());
	}
	
	public String toString(){
		String pianoString = "Name: " + getName() + "<br/> Number of keys: " + getNumberOfKeys() +
				"<br/> Price: " + getFormattedPrice();
		return pianoString;
	}
}
