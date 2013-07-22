package blizzard.warehouse.view;

import java.util.List;


import blizzard.warehouse.controller.UserManager;
import blizzard.warehouse.model.Item;
import blizzard.warehouse.model.User;

import com.opensymphony.xwork2.ActionSupport;


public class UserAction extends ActionSupport {
	
	private User user;
	private List<User> userList;	
	private int id;

	private UserManager linkController;

	public UserAction() {
		linkController = new UserManager();
	}	

	public String doregister() {
		System.out.println(getUser());
		try {
			linkController.doregister(getUser());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	public String login(){
		String value ="";

			value = linkController.login(getUser()); 

		 if(value == "error" || value == "") {return ERROR;}
		 else {
		 return SUCCESS;
		 }
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
}

