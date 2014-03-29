package deep.fund.controller;
import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import deep.fund.bean.Balance;
import deep.fund.svc.BalanceSvc;

@Controller
@RequestMapping("/fund")
public class FundController{
	
	@RequestMapping("/balance")
	public String balance(String dt,Model model){
		if(dt==null){
			dt = DateFormat.getDateInstance(DateFormat.MEDIUM).format(new java.util.Date());			
		}
		BalanceSvc svc = new BalanceSvc();		
		model.addAttribute("rpt", svc.getBalance(dt));		
		System.out.println("fund/rpt/balance");
		return "fund/rpt/balance";
	}
	
	// collection and payment
	@RequestMapping("/cap")
	public String inOut(Model model){
		BalanceSvc svc = new BalanceSvc();
		model.addAttribute("sz_rpt", svc.getOccurSum());
		return "fund/rpt/sz";
	}
	
	// detail report of collection and payment
	@RequestMapping({"capd","/cap/detail"})
	public String inOutDetail(String dt,Model model){
		if(dt==null){
			dt = DateFormat.getDateInstance(DateFormat.MEDIUM).format(new java.util.Date());			
		}
		BalanceSvc svc = new BalanceSvc();
		model.addAttribute("dc_detail",svc.getOccurDetail(dt));
		return "fund/rpt/szd";
	}
	// Bulk Trade action
	@RequestMapping("bulkTrade")
	public String bulkTrade(Model model){
		BalanceSvc svc = new BalanceSvc();
		model.addAttribute("dc_bulk",svc.getBulkTrade());
		return "fund/rpt/bulkTrade";
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
