package deep.rpt;

import java.io.ByteArrayOutputStream;
import java.io.OutputStream;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.view.AbstractView;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.pdf.PdfWriter;


/**
 * 
 * Spring 3.x provides an AbstractPdfView abstract class 
 * which can be subclassed to create a helper class for 
 * generating PDF documents. However, it has a big drawback 
 * which the AbstractPdfView class only supports old API version 
 * of iText i.e. it is using the package com.lowagie.* (iText version <= 2.1.7) 
 * while the recent iText’s package changes to com.itextpdf.* (iText version >= 5.x)
 * 
 * The old iText version is no longer available nor supported, 
 * so subclassing AbstractPdfView class (as of Spring 3.x) is discouraged. 
 * Instead, we recommend to subclass the AbstractView class 
 * to create an iText 5.x-compatible version. 
 * Here is code of the subclass (AbstractITextPdfView.java)
 * 
 * Note that code of this class is almost identical to the AbstractPdfView class, 
 * except it uses the package com.itextpdf.* instead of the com.lowagie.*. 
 * If curious, you can look at source code of the AbstractPdfView class 
 * which can be found inside the spring-webmvc-VERSION-sources.jar file.
 * 
 * @author Liu Ying xian
 *
 */

public abstract class AbstractITextPdfView extends AbstractView{
	
	public AbstractITextPdfView() {
		setContentType("application/pdf");
	}
	
	@Override
	protected boolean generatesDownloadContent(){
		return true;
	}
	
	@Override
	protected void renderMergedOutputModel(Map<String, Object> model,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// IE workaround: write into byte array first
		ByteArrayOutputStream baos = createTemporaryOutputStream();
		
		// Apply preferences and build metadata
		Document doc = new Document();
		PdfWriter writer = newWriter(doc,baos);
		prepareWriter(model,writer,request);
		buildPdfMetadata(model,doc,request);
		
		// Build PDF document
		doc.open();
		buildPdfDocument(model,doc,writer,request,response);
		doc.close();
		
		// Flush to HTTP response
		writeToResponse(response,baos);
	}
	
	


	protected void buildPdfMetadata(Map<String, Object> model, Document document, HttpServletRequest request){
		
	}
	protected Document newDocument(){
		return new Document(PageSize.A4);
	}
	
	protected PdfWriter newWriter(Document doc,OutputStream os) throws DocumentException{
		return PdfWriter.getInstance(doc, os);
	}
	
	protected void prepareWriter(Map<String,Object> model,PdfWriter writer,HttpServletRequest req) throws DocumentException{
		writer.setViewerPreferences(getViewerPreference());
	}

	protected int getViewerPreference() {
		// TODO Auto-generated method stub
		return PdfWriter.ALLOW_PRINTING | PdfWriter.PageLayoutSinglePage;
	}
	 protected abstract void buildPdfDocument(Map<String, Object> model, Document document, PdfWriter writer,
	            HttpServletRequest request, HttpServletResponse response) throws Exception;

}
