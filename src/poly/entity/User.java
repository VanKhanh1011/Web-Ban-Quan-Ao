package poly.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="Users")
public class User {
	@Id
	@Column(name="Email")
	private String email;
	@Column(name="Ho")
	private String ho;
	
	@Column(name="Ten")
	private String ten;
	
	@Column(name="Matkhau")
	private String matkhau;
//	public User(String ho, String ten, String email, String matkhau) {
//		super();
//		this.ho = ho;
//		this.ten = ten;
//		this.email = email;
//		this.matkhau = matkhau;
//	}
//	public String getHo() {
//		return ho;
//	}
//	public void setHo(String ho) {
//		this.ho = ho;
//	}
//	public String getTen() {
//		return ten;
//	}
//	public void setTen(String ten) {
//		this.ten = ten;
//	}
//	public String getEmail() {
//		return email;
//	}
//	public void setEmail(String email) {
//		this.email = email;
//	}
//	public String getMatkhau() {
//		return matkhau;
//	}
//	public void setMatkhau(String matkhau) {
//		this.matkhau = matkhau;
//	}
//	public User() {
//		super();
//		// TODO Auto-generated constructor stub
//	}
	public String getHo() {
		return ho;
	}
	public void setHo(String ho) {
		this.ho = ho;
	}
	public String getTen() {
		return ten;
	}
	public void setTen(String ten) {
		this.ten = ten;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMatkhau() {
		return matkhau;
	}
	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}

}
