package bean;

public class Order {

	private int orderId;
	private String userName;
	private String Flo_name;
	private String quantity;
	private String unit_price;
	private String total_price;
	private String userAddress;
	private String userPhone;
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getFlo_name() {
		return Flo_name;
	}
	public void setFlo_name(String flo_name) {
		Flo_name = flo_name;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public String getUnit_price() {
		return unit_price;
	}
	public void setUnit_price(String unit_price) {
		this.unit_price = unit_price;
	}
	public String getTotal_price() {
		return total_price;
	}
	public void setTotal_price(String total_price) {
		this.total_price = total_price;
	}
	public String getUserAddress() {
		return userAddress;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	@Override
	public String toString() {
		return "Order [orderId=" + orderId + ", userName=" + userName
				+ ", Flo_name=" + Flo_name + ", quantity=" + quantity
				+ ", unit_price=" + unit_price + ", total_price=" + total_price
				+ ", userAddress=" + userAddress + ", userPhone=" + userPhone
				+ "]";
	}
	
	
}
