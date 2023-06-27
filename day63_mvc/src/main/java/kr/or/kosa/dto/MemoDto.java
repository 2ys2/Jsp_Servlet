package kr.or.kosa.dto;

public class MemoDto { //Model
	
	private String id, email, content;
	
	public MemoDto() {	}

	//
	public MemoDto(String id, String email, String content) {
		super();
		this.id = id;
		this.email = email;
		this.content = content;
	}

	
	//getter, setter
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	

}


/*
id VARCHAR2(20) not null,
email VARCHAR2(20) not null,
content VARCHAR2(100)
 */
