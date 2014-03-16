package deep.controller.admin;

import java.util.concurrent.atomic.AtomicLong;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import deep.entity.admin.*;

@Controller
public class Hi {
	private static final String TEMPLATE = "Hello %s";
	private final AtomicLong counter = new AtomicLong();
	
	@RequestMapping("/greeting")
	public @ResponseBody Greeting greeting(
			@RequestParam(value="name",required=false,defaultValue="world") String name){
		return new Greeting(counter.incrementAndGet(),String.format(TEMPLATE, name));
	}

}
