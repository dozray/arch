package deep.fund.rpt.bean;

import java.util.Date;

public class ION {
	private	Date	dt ;
	private	Double	periodInit;
	private Double 	debit;
	private Double	credit;
	private Double	balance;
	
	public ION(){}
	
	public ION(Date dt, Double periodInit, Double debit, Double credit,
			Double balance) {
		super();
		this.dt = dt;
		this.periodInit = periodInit;
		this.debit = debit;
		this.credit = credit;
		this.balance = balance;
	}
	public Date getDt() {
		return dt;
	}
	public void setDt(Date dt) {
		this.dt = dt;
	}
	public Double getPeriodInit() {
		return periodInit;
	}
	public void setPeriodInit(Double periodInit) {
		this.periodInit = periodInit;
	}
	public Double getDebit() {
		return debit;
	}
	public void setDebit(Double debit) {
		this.debit = debit;
	}
	public Double getCredit() {
		return credit;
	}
	public void setCredit(Double credit) {
		this.credit = credit;
	}
	public Double getBalance() {
		return balance;
	}
	public void setBalance(Double balance) {
		this.balance = balance;
	}
	
}
