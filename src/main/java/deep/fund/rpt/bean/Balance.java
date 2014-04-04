package deep.fund.rpt.bean;

public class Balance {
	private String companyName;
	private Double cashBalance;
	private Double bankBalance;
	private Double acceptanceBalance;
	private Double freezeBalance;
	
	public Balance(String companyName, Double cashBalance, Double bankBalance,
			Double acceptanceBalance, Double freezeBalance) {
		super();
		this.companyName = companyName;
		this.cashBalance = cashBalance;
		this.bankBalance = bankBalance;
		this.acceptanceBalance = acceptanceBalance;
		this.freezeBalance = freezeBalance;
	}

	public Double getFreezeBalance() {
		return freezeBalance;
	}

	public void setFreezeBalance(Double freezeBalance) {
		this.freezeBalance = freezeBalance;
	}

	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public Double getCashBalance() {
		return cashBalance;
	}
	public void setCashBalance(Double cashBalance) {
		this.cashBalance = cashBalance;
	}
	public Double getBankBalance() {
		return bankBalance;
	}
	public void setBankBalance(Double bankBalance) {
		this.bankBalance = bankBalance;
	}
	public Double getAcceptanceBalance() {
		return acceptanceBalance;
	}
	public void setAcceptanceBalance(Double acceptanceBalance) {
		this.acceptanceBalance = acceptanceBalance;
	}
	
}
