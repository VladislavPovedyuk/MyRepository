package blizzard.warehouse.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Items")
public class Item implements Serializable{
	

	private int id;
	private String name;
	private int count;
	private String unit;

	@Id
	@GeneratedValue
	@Column(name="id")
	public int getId() {
		return id;
	}
	@Column(name="name")
	public String getName() {
		return name;
	}
	@Column(name="count")
	public int getCount() {
		return count;
	}
	@Column(name="unit")	
	public String getUnit() {
		return unit;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}
	
	
}
