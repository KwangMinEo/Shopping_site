package shopping.crud.order;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository
public class orderDAO {
	@Autowired
	SqlSessionTemplate temp;

	public void dbInsert(orderDTO dto) {
       temp.insert("order.add",dto);
	}// end
	
	public List<orderDTO> dbSelectproduct(){
		List<orderDTO> list=temp.selectList("order.selectproduct");
		return list;
	}
	

	public orderDTO dbSelectusers() {
		return temp.selectOne("order.selectusers");
	  }
	
	public void dbdelete(int data) {
		temp.delete("order.del",data);
	}
}// class end
