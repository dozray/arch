package deep.fund.rpt.bean;

import java.math.BigDecimal;

public class PieData {
	private String name;
	private BigDecimal value;
	public PieData(String name, BigDecimal value) {
		super();
		this.name = name;
		this.value = value;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public BigDecimal getValue() {
		return value;
	}
	public void setValue(BigDecimal value) {
		this.value = value;
	}
	
}
