package shopping.crud.order;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

@Repository
@Component
public class orderDAO {
@Autowired
SqlSessionTemplate temp;

public void dbInsert(orderDTO dto) {
	
}//end
}//class end