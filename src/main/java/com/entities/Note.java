package com.entities;

import java.util.Date;
import java.util.Random;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name = "notes")
public class Note {
	
	@Id
	private int id;
	private String title;
	@Lob
	private byte[] content;
	private Date addedDate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return new String(content);
	}
	public void setContent(byte[] content) {
		this.content = content;
	}
	public Date getAddedDate() {
		return addedDate;
	}
	public void setAddedDate(Date addedDate) {
		this.addedDate = addedDate;
	}
	
	public Note(String title, byte[] content, Date addedDate) {
		super();
		this.id = new Random().nextInt(100000);
		this.title = title;
		this.content = content;
		this.addedDate = addedDate;
	}
	public Note() {
		super();
	}
	
}
