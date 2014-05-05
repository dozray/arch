package deep.cmn.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/upload")
public class UploadController {
	private String innPath = "upload/rpt/";
	@RequestMapping("/show")
	public String show(){
		return "cmn/upload";
	}
	
	@RequestMapping("/to")
	public ModelAndView fileUpload(@RequestParam String name , @RequestParam(value="file",required=false) MultipartFile multiFile , HttpServletRequest request, ModelMap model){
		ModelAndView mav = new ModelAndView();
		try{		
			if(request instanceof MultipartHttpServletRequest && !multiFile.isEmpty()){
				String path = request.getSession().getServletContext().getRealPath(".")+"/WEB-INF/v/"+innPath;	   				
				File folder = new File(path);    
		        if(!folder.exists()){        	
		        	folder.mkdirs();        	
		        } 		        
		       
		        //new SimpleDateFormat("yyyy-MM-dd").format(new Date());
				//SimpleDateFormat df=new SimpleDateFormat("yyyyMMddHHmmss");			
				//String fileName = multiFile.getOriginalFilename();
				//String suffix = fileName.substring(fileName.lastIndexOf("."));
				String fileName = name+".jsp";		       
		        File target = new File(path,fileName);
		        target.createNewFile();
		        try{
		        	InputStream is = multiFile.getInputStream();
		        	OutputStream os = new FileOutputStream(target);
		        	int read = 0;
		        	byte[] bytes = new byte[1024];
		        	while((read=is.read(bytes))!=-1){
		        		os.write(bytes,0,read);
		        	}
		        	is.close();
		        	os.close();		        	
		        }finally{}		           
		        //multiFile.transferTo(target);		        
		        mav.addObject("ok","");
		        mav.setViewName(innPath+name);
			}
			else{
				mav.addObject("err","上传文件失败，所选择文件为空。");
				mav.setViewName("cmn/err");
			}
		}catch(Exception e){
			e.printStackTrace();
		}		
		return mav;		
	   
	}
}
