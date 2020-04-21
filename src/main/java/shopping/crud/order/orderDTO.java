package shopping.crud.order;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter
public class orderDTO {
	private int price, count;
	private String order_num, user_id, product_id, product_name;
	private String op1, op2;
	private String user_add1, user_add2;
	private String user_name, user_phone, status,file1;
	private java.util.Date wdate;
	private MultipartFile upload_f;
}
