package it.dstech.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class SampleController {
	
	@RequestMapping(value = "/testChiamata")
	public ModelAndView checkParameter(@RequestParam("operazione") int operazione, Model model ) {
	ModelAndView modelAndView = new ModelAndView();
	modelAndView.setViewName("index2");
	modelAndView.addObject("operazione", operazione);
	return modelAndView;
	}

	@RequestMapping(value = "/operazioni")
	public ModelAndView checkParameter(@RequestParam("n1") double n1, @RequestParam("n2") double n2,@RequestParam("operazione") int operazione, Model model ) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("risultato");
		modelAndView.addObject("n1", n1);
		modelAndView.addObject("n2", n2);
		modelAndView.addObject("risultato", operazione(operazione, n1, n2,modelAndView));
		return modelAndView;
	}
	
	private double operazione(int operazione,double n1,double n2, ModelAndView modelAndView) {
		switch (operazione) {
		case 1:
			modelAndView.addObject("segno", "+");
			return n1+n2;
		case 2:
			modelAndView.addObject("segno", "-");
			return n1-n2;
		case 3:
			modelAndView.addObject("segno", "*");
			return n1*n2;
		default:
			modelAndView.addObject("segno", "/");
			return n1/n2;
		}
	}
	
}
