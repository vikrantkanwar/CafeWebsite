import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "orders")
public class Item {
	@Id
	@Column(name = "email")
	String email;
	
	@Column(name = "item")
	String item;
	
	@Column(name = "quantity")
	String quantity;
	
	@Column(name = "price")
	String price;

	public Item() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Item(String email, String item, String quantity, String price) {
		super();
		this.email = email;
		this.item = item;
		this.quantity = quantity;
		this.price = price;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getItem() {
		return item;
	}

	public void setItem(String item) {
		this.item = item;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}
	
}
