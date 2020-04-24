package shopping.crud;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class customerDAO { 
   
	@Autowired
	SqlSessionTemplate temp ;
	
//	public void dbInsert(customerDTO dto) {
//	  temp.insert("board.add", dto); 
//	}//end	
	
	public List<customerDTO> dbSelect( ) {
	  return temp.selectList("customer.selectAll");
	}//end

	public List<customerDTO> dbSelect(int start, int end) {
	  customerDTO dto = new customerDTO();
	  dto.setStart(start); 
	  dto.setEnd(end);
	  return temp.selectList("customer.selectAll",dto);
	}//end
	
	public List<customerDTO> dbSelect(int start, int end, String skey, String sval) {      
		  customerDTO dto = new customerDTO();
		  dto.setStart(start); 
		  dto.setEnd(end);
		  dto.setSkey(skey);
		  dto.setSval(sval);
		  return temp.selectList("customer.selectAll",dto);
		}//end
		
	public int dbCount() {
	  return temp.selectOne("customer.countAll");
	}//end
	
	public int dbCountSearch(String skey, String sval) {
		   customerDTO dto = new customerDTO();
		   dto.setSkey(skey);
		   dto.setSval(sval);
		   return temp.selectOne("customer.countAllSearch", dto);
		}//end
	

}//BoardDAO class END








