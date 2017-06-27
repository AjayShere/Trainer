package com.cognizant.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cognizant.entity.TrainerDetails;

@Controller
public class ApplySheduleController {
	
	@RequestMapping(value="/applyshedule",method = RequestMethod.GET)
	public String applyShedule(Model model){
		
		return "addShedule";
		
	}
	
	@Requestmapping(value="/applyShedule", method = RequestMethod.POST){
		public String  initAddShedule(@ModelAttribute("shedule") @Valid TrainerDetails TDetails,Model model){
			
			
			
			
		}
		
		
	}
	

}
