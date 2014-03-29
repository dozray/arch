package deep.fund.rpt.bean;

import java.util.Date;

public class DCDetails {
	private Date dt;
	private String summary;
	private Double debit;
	private Double credit;
	private Double balance;
	public DCDetails(Date dt, String summary, Double debit, Double credit,
			Double balance) {
		super();
		this.dt = dt;
		this.summary = summary;
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
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
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
