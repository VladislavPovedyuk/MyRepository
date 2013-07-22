package blizzard.warehouse.view;

import java.util.List;

import blizzard.warehouse.controller.ItemManager;
import blizzard.warehouse.model.Item;

import com.opensymphony.xwork2.ActionSupport;


public class ItemAction extends ActionSupport {

	
	private Item item;
	private List<Item> itemList;	
	private List<Item> itemToEdit;
	private int id;

	private ItemManager linkController;

	public ItemAction() {
		linkController = new ItemManager();
	}


	public String execute() {
		this.itemList = linkController.list();
		return SUCCESS;
	}

	public String add() {
		System.out.println(getItem());
		try {
			linkController.add(getItem());
		} catch (Exception e) {
			e.printStackTrace();
		}
		this.itemList = linkController.list();
		return SUCCESS;
	}

	public String delete() {
		linkController.delete(getId());
		return SUCCESS;
	}
	
	public String edit(){
		itemToEdit = linkController.getItemById(getId());		
		return SUCCESS;
	}
	
	public String commitEdit()
	{
		linkController.updateItem(getItem());
		return SUCCESS;
	}

	public Item getItem() {
		return item;
	}

	public List<Item> getItemList() {
		return itemList;
	}

	public void setItem(Item item) {
		this.item = item;
	}

	public void setItemList(List<Item> itemsList) {
		this.itemList = itemsList;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	

	public List<Item> getItemToEdit() {
		return itemToEdit;
	}

	public void setItemToEdit(List<Item> itemToEdit) {
		this.itemToEdit = itemToEdit;
	}
}
