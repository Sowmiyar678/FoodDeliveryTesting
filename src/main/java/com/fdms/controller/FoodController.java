package com.fdms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.fdms.bean.Food;
import com.fdms.dao.FoodDAO;

@Controller
public class FoodController {
 
	
	@Autowired
	FoodDAO dao;
	
	@RequestMapping("Links")
	public ModelAndView loadLinks() {
		ModelAndView mv=new ModelAndView("Links");
		return mv;
	}
	
//===============INSERT
		@RequestMapping("insert")
		public ModelAndView loadInsert() {
			ModelAndView mv=new ModelAndView("insert");
			return mv;
		}
//===========================LOADDELETE
				@RequestMapping("delete")
				public ModelAndView loadDelete() {
					return new ModelAndView("delete").addObject("key",dao.getIds());
					
				}
//=================LOADUPDATE
				@RequestMapping("update")
				public ModelAndView loadUpdate() {
					return new ModelAndView("update").addObject("key",dao.getIds());
				}
				//==========================FIND
				@RequestMapping("find")
				public ModelAndView loadFind() {
					return new ModelAndView("Find").addObject("key",dao.getIds());
				}
			//===========================LOADMETHOD_FINDALL
				@RequestMapping("findAll")
				public ModelAndView loadFindAll() {
					return new ModelAndView("FindAll").addObject("list",dao.getfoodList());
				}
//===========================================================================
		
		@PostMapping("insertfood")
		public ModelAndView doInsert(@ModelAttribute("bean")Food fdm) {
			int n=dao.insertfood(fdm);
			ModelAndView mv=new ModelAndView("insert");
			if(n==1) {
				return new ModelAndView("insert").addObject("msg","Record Inserted Successfully");
				
			}
			else
				return new ModelAndView("insert").addObject("msg","Record Insertion Failure");

		}
//======================DELETE
//		
		@PostMapping("deletefood")
		public ModelAndView doDelete(@ModelAttribute("bean")Food fdm) {
			if(dao.deletefood(fdm))
				return new ModelAndView("delete").addObject("key",dao.getIds()).addObject("msg","Record Deleted Successfully");
			
			    return new ModelAndView("delete").addObject("key",dao.getIds()).addObject("msg","Record Deletion failure");
		}
		//====================================Fetch
		@PostMapping("Fetch")
		public ModelAndView doFetch(@ModelAttribute("bean")Food fdm) {
			return new ModelAndView("update").addObject("key",dao.getIds()).addObject("bean",dao.getfood(fdm));
			
		}
	//===============================Update	
		@PostMapping("updatefood")
		public ModelAndView doupdate(@ModelAttribute("bean")Food fdm) {
			if(dao.updatefood(fdm)) 
				return new ModelAndView("update").addObject("key",dao.getIds()).addObject("msg","Record Updated Successfully");
				
			    return new ModelAndView("update").addObject("key",dao.getIds()).addObject("msg","Record Updation failure");
	}
		//===========================FIND
		@PostMapping("findfood")
		public ModelAndView doFind(@ModelAttribute("bean")Food e) {
			Food fdm=dao.getfood(e);
			if(fdm !=null)
				return new ModelAndView("Find").addObject("key",dao.getIds()).addObject("bean",fdm);
		
			return new ModelAndView("Find").addObject("key",dao.getIds()).addObject("msg","Search Not Found");
			
		}
		
		//====================================FINDALL
		@RequestMapping("action")
		public ModelAndView doAction(@RequestParam("HotelID")Integer HotelID) {
			Food fdm = new Food();
			fdm.setHotelID(HotelID);
			return new ModelAndView("FindAll").addObject("list",dao.getfoodList()).addObject("bean",dao.getfood(fdm));
		}
		@PostMapping("doEdit")
		public ModelAndView doFindAll(@ModelAttribute("bean1")Food fdm) {
			
			if(dao.updatefood(fdm))
			return new ModelAndView("FindAll").addObject("list",dao.getfoodList());
			
			return new ModelAndView("FindAll").addObject("list",dao.getfoodList());
			
		}
		
		@RequestMapping("back")
		public ModelAndView goBack() {
			return new ModelAndView("FindAll").addObject("list",dao.getfoodList());
		}
		
		@RequestMapping("deletenow")
		public ModelAndView doDeleteNow(@RequestParam("HotelID")Integer HotelID) {
			Food fdm = new Food();
			fdm.setHotelID(HotelID);
			
			dao.deletefood(fdm);
			return new ModelAndView("FindAll").addObject("list",dao.getfoodList());
		}
		
		@RequestMapping("doAdd")
		public ModelAndView doAdd(@ModelAttribute("bean1")Food fdm) {
			dao.insertfood(fdm);
			return new ModelAndView("FindAll").addObject("list",dao.getfoodList());
		}
	}

		

