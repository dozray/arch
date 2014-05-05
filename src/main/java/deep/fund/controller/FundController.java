package deep.fund.controller;
import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import deep.fund.rpt.bean.Balance;
import deep.fund.rpt.bean.PieData;
import deep.fund.svc.BalanceSvc;

@Controller
@RequestMapping("/fund")
public class FundController{
	private DecimalFormat df = new DecimalFormat("#.00");
	
	@RequestMapping("/plan/{dt}")
	public String plan(@PathVariable String dt,Model model){
		if(dt==null)
			dt = new SimpleDateFormat("yyyy-MM-dd").format(new Date());		
		return "upload/rpt/"+dt;
	}
	
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
	
	@RequestMapping("/balance/{dt}")
	public String blc(@PathVariable String dt,Model model){	
		BalanceSvc svc = new BalanceSvc();		
		model.addAttribute("rpt", svc.getBalance(dt));		
		System.out.println("fund/rpt/balance");
		return "fund/rpt/blc";
	}
	
	// collection and payment
	@RequestMapping("/cap")
	public String inOut(String dt,Model model){
		if(dt==null){
			dt = DateFormat.getDateInstance(DateFormat.MEDIUM).format(new java.util.Date());			
		}
		BalanceSvc svc = new BalanceSvc();
		model.addAttribute("sz_rpt", svc.getOccurSum(dt));
		return "fund/rpt/sz";
	}
	
	@RequestMapping("/cap/{dt}")
	public String cap(@PathVariable String dt,Model model){
		BalanceSvc svc = new BalanceSvc();
		model.addAttribute("sz_rpt", svc.getOccurSum(dt));
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
	
	@RequestMapping("/capd/{dt}")
	public String capd(@PathVariable String dt,Model model){
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
	
	
	@RequestMapping(value="/t",method = RequestMethod.GET)
	public String viewHome(){
		return "/fund/dl";
	}
	
	@RequestMapping(value="/dl" , method = RequestMethod.GET)
	public ModelAndView downloadExcel(String dt){
		List<Balance> lst = new ArrayList<Balance>();
		if(dt==null){
			dt = DateFormat.getDateInstance(DateFormat.MEDIUM).format(new java.util.Date());			
		}	
		BalanceSvc svc = new BalanceSvc();		
		lst = svc.getBalance(dt);		
		// return a view which will be resolved by an excel view resolver.
		return new ModelAndView ("pdfView","lst",lst);
	}
	
	@RequestMapping(value="/cashjson",method=RequestMethod.GET)
	@ResponseBody
	public List<PieData> genCash(String dt){
		ArrayList<PieData> al = new ArrayList<PieData>();
		
		if(dt==null){
			dt = DateFormat.getDateInstance(DateFormat.MEDIUM).format(new java.util.Date());			
		}
		BalanceSvc svc = new BalanceSvc();
		ArrayList<Balance> alb = svc.getBalance(dt);
		if(alb.size()>0){
			for(Balance b : alb)
			{
				al.add(new PieData(b.getCompanyName(),new BigDecimal(b.getCashBalance())));
			}
		}	
		return al;
	}
	
	@RequestMapping(value="/bankjson",method=RequestMethod.GET)
	@ResponseBody
	public List<PieData> genBank(String dt){
		ArrayList<PieData> al = new ArrayList<PieData>();
		
		if(dt==null){
			dt = DateFormat.getDateInstance(DateFormat.MEDIUM).format(new java.util.Date());			
		}
		BalanceSvc svc = new BalanceSvc();
		ArrayList<Balance> alb = svc.getBalance(dt);
		if(alb.size()>0){
			for(Balance b : alb)
			{
				al.add(new PieData(b.getCompanyName(),new BigDecimal(b.getBankBalance())));
			}
		}	
		return al;
	}
	
	@RequestMapping(value="/balancejson",method=RequestMethod.GET)
	@ResponseBody
	public List<PieData> genBalance(String dt){
		ArrayList<PieData> al = new ArrayList<PieData>();
		
		if(dt==null){
			dt = DateFormat.getDateInstance(DateFormat.MEDIUM).format(new java.util.Date());			
		}
		BalanceSvc svc = new BalanceSvc();
		ArrayList<Balance> alb = svc.getBalance(dt);
		if(alb.size()>0){
			for(Balance b : alb)
			{				
				al.add(new PieData(b.getCompanyName(),new BigDecimal(b.getCashBalance().toString()).add(new BigDecimal(b.getBankBalance().toString()))));
			}
		}	
		return al;
	}
	
}
