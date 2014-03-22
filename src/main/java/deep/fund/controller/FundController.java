package deep.fund.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/fund")
public class FundController{
	
	@RequestMapping("/balance")
	public String balance(){
		System.out.println("fund/rpt/balance");
		return "fund/rpt/balance";
	}
	
	// collection and payment
	@RequestMapping("/cap")
	public String inOut(){
		return "fund/rpt/sz";
	}
	
	// detail report of collection and payment
	@RequestMapping("capd")
	public String inOutDetail(){
		return "fund/rpt/szd";
	}
	
	@RequestMapping("/fundDistrib")
	public String fundDistrib(){
		return "fund/analyse/fund_distrib";
	}
	
	@RequestMapping("/cashDistrib")
	public String cashDistrib(){
		return "fund/analyse/cash_distrib";
	}
	// Bank deposit
	@RequestMapping("/bankDistrib")
	public String bankDistrib(){
		return "fund/analyse/bank_distrib";
	}
	// Acceptance
	@RequestMapping("/acceptance")
	public String InnerBulk(){
		return "fund/analyse/acceptance_distrib";
	}	
}
