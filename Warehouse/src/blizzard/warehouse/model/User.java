package blizzard.warehouse.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Users")
public class User implements Serializable{
	

	private int id;
	private String login;
	private String password;

	@Id
	@GeneratedValue
	@Column(name="id")
	public int getId() {
		return id;
	}
	@Column(name="login")
	public String getLogin() {
		return login;
	}
	@Column(name="password")
	public String getPassword() {
		return password;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
