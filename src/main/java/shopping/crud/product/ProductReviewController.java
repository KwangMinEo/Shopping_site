package shopping.crud.product;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class ProductReviewController {

	@Autowired
	ProductReviewDAO pdao;
	
	@Autowired
	private ServletContext application;
	
	private static final Logger logger = LoggerFactory.getLogger(ProductReviewController.class);
	
	
	
	@RequestMapping(value="/productReviewList.do")
	public String productR_select(Model model) {
		List<ProductReviewDTO> PD = pdao.dbSelect();
		model.addAttribute("PD",PD);
		return "ProductReviewList";
	}//end
	
	@RequestMapping(value="/productReview.do")
	public String productR_write() {	
		return "ProductReviewWrite";
	}//end
	
	@RequestMapping("/productReviewInsert.do")
	public String productR_insert(ProductReviewDTO dto,HttpServletRequest request) {
		String path=application.getRealPath("/resources/upload");
		String img=dto.getUpload_f().getOriginalFilename();
		File file = new File(path, img); 
		try {
			dto.getUpload_f().transferTo(file);
		}catch (Exception e) {System.out.println(e);	}		
		dto.setFile1(img);		
		pdao.dbInsert(dto);
		return "redirect:/productReviewList.do";
	}//end

}//BoardReplyController class END


