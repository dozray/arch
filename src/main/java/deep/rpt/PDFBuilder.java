package deep.rpt;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

import deep.fund.rpt.bean.Balance;

public class PDFBuilder extends AbstractITextPdfView {

	@Override
	protected void buildPdfDocument(Map<String, Object> model,
			Document doc, PdfWriter writer, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// Get data model which is passed by the Spring container
		List<Balance> lst = (List<Balance>) model.get("lst");
		
		doc.add(new Paragraph("Recommended data for Spring Framework"));
		PdfPTable table = new PdfPTable(5);
		 table.setWidthPercentage(100.0f);
	        table.setWidths(new float[] {3.0f, 2.0f, 2.0f, 2.0f, 1.0f});
	        table.setSpacingBefore(10);
	         
	        // define font for table header row
	        Font font = FontFactory.getFont(FontFactory.defaultEncoding);
	        font.setColor(BaseColor.WHITE);
	         
	        // define table header cell
	        PdfPCell cell = new PdfPCell();
	        cell.setBackgroundColor(BaseColor.BLUE);
	        cell.setPadding(5);
	         
	        // write table header
	        cell.setPhrase(new Phrase("单位", font));
	        table.addCell(cell);
	        
	        cell.setPhrase(new Phrase("Cash", font));
	        table.addCell(cell);
	         
	        cell.setPhrase(new Phrase("Bank", font));
	        table.addCell(cell);
	        
	        cell.setPhrase(new Phrase("Acceptance", font));
	        table.addCell(cell);
	         
	        cell.setPhrase(new Phrase("Sum", font));
	        table.addCell(cell);
	         
	      
	         
	        // write table row data
	        for (Balance b : lst) {
	            table.addCell(b.getCompanyName());
	            table.addCell(String.valueOf(b.getCashBalance()));
	            table.addCell(String.valueOf(b.getBankBalance()));
	            table.addCell(String.valueOf(b.getAcceptanceBalance()));
	            table.addCell(String.valueOf(b.getCashBalance()+b.getBankBalance()+b.getAcceptanceBalance()));
	        }
	        
	        doc.add(table);	        
	}

}
