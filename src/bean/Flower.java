package bean;

import java.io.Serializable;

public class Flower implements Serializable{

	private int Flo_id;
	private String Flo_name;
	private String Flo_color;
	private String Flo_sort;
	private String Flo_meaning;
	private String Flo_place;
	private String unit_price;
	public int getFlo_id() {
		return Flo_id;
	}
	public void setFlo_id(int flo_id) {
		Flo_id = flo_id;
	}
	public String getFlo_name() {
		return Flo_name;
	}
	public void setFlo_name(String flo_name) {
		Flo_name = flo_name;
	}
	public String getFlo_color() {
		return Flo_color;
	}
	public void setFlo_color(String flo_color) {
		Flo_color = flo_color;
	}
	public String getFlo_sort() {
		return Flo_sort;
	}
	public void setFlo_sort(String flo_sort) {
		Flo_sort = flo_sort;
	}
	public String getFlo_meaning() {
		return Flo_meaning;
	}
	public void setFlo_meaning(String flo_meaning) {
		Flo_meaning = flo_meaning;
	}
	public String getFlo_place() {
		return Flo_place;
	}
	public void setFlo_place(String flo_place) {
		Flo_place = flo_place;
	}
	public String getUnit_price() {
		return unit_price;
	}
	public void setUnit_price(String unit_price) {
		this.unit_price = unit_price;
	}
	@Override
	public String toString() {
		return "Flower [Flo_id=" + Flo_id + ", Flo_name=" + Flo_name
				+ ", Flo_color=" + Flo_color + ", Flo_sort=" + Flo_sort
				+ ", Flo_meaning=" + Flo_meaning + ", Flo_place=" + Flo_place
				+ ", unit_price=" + unit_price + "]";
	}
	
	
}
