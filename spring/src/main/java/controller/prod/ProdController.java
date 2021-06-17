package controller.prod;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import command.ProductCommand;
import service.product.ProductAutoNumService;
import service.product.ProductJoinService;

@Controller
@RequestMapping("prod")
public class ProdController {
	@Autowired
	ProductAutoNumService productAutoNumService;
	
	@RequestMapping("prodList")
	public String prodList() {
		return "product/productList";
	}
	@RequestMapping("prodJoin")
	public String prodJoin(Model model) {
		productAutoNumService.autoNum(model);
		return "product/productForm";
	}
	
	@Autowired
	ProductJoinService productJoinService;
	@RequestMapping("prodJoinOk")
	public String prodJoinOk(ProductCommand productCommand, HttpSession session) {
		productJoinService.prodJoin(productCommand, session);
		return "redirect:prodList";
	}
}
