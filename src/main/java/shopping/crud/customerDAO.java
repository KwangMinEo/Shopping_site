package shopping.crud;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class customerDAO implements BoardDAOImp { 
   
	@Autowired
	SqlSessionTemplate temp ;
	
	public void dbInsert(customerDTO dto) {
	  temp.insert("board.add", dto); 
	}//end	
	
	public List<customerDTO> dbSelect( ) {
	  return temp.selectList("board.selectAll");
	}//end

	public List<customerDTO> dbSelect(int start, int end) {
	  customerDTO dto = new customerDTO();
	  dto.setStart(start); 
	  dto.setEnd(end);
	  return temp.selectList("board.selectAll",dto);
	}//end
	
	public List<customerDTO> dbSelect(int start, int end, String skey, String sval) {      
		  customerDTO dto = new customerDTO();
		  dto.setStart(start); 
		  dto.setEnd(end);
		  dto.setSkey(skey);
		  dto.setSval(sval);
		  return temp.selectList("board.selectAll",dto);
		}//end
		
	public int dbCount() {
	  return temp.selectOne("board.countAll");
	}//end
	
	public int dbCountSearch(String skey, String sval) {
		   customerDTO dto = new customerDTO();
		   dto.setSkey(skey);
		   dto.setSval(sval);
		   return temp.selectOne("board.countAllSearch", dto);
		}//end
	
	public customerDTO  dbDetail(int data ) {
		customerDTO dto = temp.selectOne("board.detail", data);
		return dto;
	}//end

	public void  dbDelete(int data ) {
		temp.delete("board.delete", data);
	}//end
	

	public void dbUpdate(customerDTO dto) {
		temp.update("board.update",dto);  
	}
}//BoardDAO class END








