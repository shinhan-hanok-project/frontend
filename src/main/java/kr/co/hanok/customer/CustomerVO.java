package kr.co.hanok.customer;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class CustomerVO {
	//고객
	private int customer_id;
	private String customer_name;
	private String customer_pwd;
	private String cutomer_address;
	private String customer_tel;
	private Timestamp customer_created;
}
