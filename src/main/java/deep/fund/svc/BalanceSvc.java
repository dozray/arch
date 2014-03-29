package deep.fund.svc;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import deep.admin.svc.ConnectionDAO;
import deep.fund.bean.Balance;
import deep.fund.rpt.bean.BulkTrade;
import deep.fund.rpt.bean.DCDetails;
import deep.fund.rpt.bean.ION;

public class BalanceSvc {

	public ArrayList<Balance> getBalance(String dt){
		ArrayList<Balance> al = new ArrayList<Balance>();		
		
		try{
			PreparedStatement pstmt = ConnectionDAO.getConnection().prepareStatement("{call dbo.proc_rpt_balance(?)}");					
			pstmt.setString(1, dt);		
			ResultSet rs = pstmt.executeQuery();
			//ResultSet rs = stmt.executeQuery(SQL);
			if(null != rs){
				while(rs.next()){
					al.add(new Balance(rs.getString("company"),rs.getDouble("cash"),rs.getDouble("bank"),rs.getDouble("acceptance")));
				}				
			}			
		}catch(SQLException e){
			System.out.println("SQL Exception : "+e.getMessage());			
		}		
		return al;
	}
	public ArrayList<ION>  getOccurSum(){
		ArrayList<ION> al = new ArrayList<ION>();
		Statement stmt = null;
		try{
			stmt = ConnectionDAO.getStatement();
			ResultSet rs = stmt.executeQuery("{call dbo.proc_rpt_debit_credit}");
			//ResultSet rs = stmt.executeQuery(SQL);
			if(null != rs){
				while(rs.next()){
					al.add(new ION(rs.getDate("dt"),rs.getDouble("YestVal"),rs.getDouble("debit"),rs.getDouble("credit"),rs.getDouble("balance")));
				}				
			}			
		}catch(SQLException e){
			System.out.println("SQL Exception : "+e.getMessage());			
		}
		return al;
	}
	/**
	 * 每天发生的明细
	 * @param dt 
	 * @return
	 */
	public ArrayList<DCDetails>  getOccurDetail(String dt){
		ArrayList<DCDetails> al = new ArrayList<DCDetails>();		
		try{
			PreparedStatement pstmt = ConnectionDAO.getConnection().prepareStatement("{call dbo.proc_rpt_debit_credit_detail(?)}");
			pstmt.setString(1, dt);		
			ResultSet rs = pstmt.executeQuery();			
			if(null != rs){
				while(rs.next()){
					al.add(new DCDetails(rs.getDate("dt"),rs.getString("summary"),rs.getDouble("debit"),rs.getDouble("credit"),rs.getDouble("balance")));
				}				
			}			
		}catch(SQLException e){
			System.out.println("SQL Exception : "+e.getMessage());			
		}
		return al;
	}
	
	public ArrayList<BulkTrade>  getBulkTrade(){
		ArrayList<BulkTrade> al = new ArrayList<BulkTrade>();
		Statement stmt = null;
		try{
			stmt = ConnectionDAO.getStatement();
			ResultSet rs = stmt.executeQuery("{call dbo.proc_rpt_debit_credit_detail_bulk}");
			//ResultSet rs = stmt.executeQuery(SQL);
			if(null != rs){
				while(rs.next()){
					al.add(new BulkTrade(rs.getDate("dt"),rs.getString("summary"),rs.getDouble("debit"),rs.getDouble("credit")));
				}				
			}			
		}catch(SQLException e){
			System.out.println("SQL Exception : "+e.getMessage());			
		}
		return al;
	}
}
