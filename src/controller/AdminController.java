package controller;


import java.util.List;

import javax.jws.WebParam.Mode;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import service.AdminService;
import bean.Admin;
import bean.User;

@Controller
@SessionAttributes("admin_now")
public class AdminController {

	@Autowired
	private AdminService as;
	//登陆
	@RequestMapping(value="admin",method=RequestMethod.GET)
	public String login(){
		return "admin";
	}
	@RequestMapping(value="adminLogin",method=RequestMethod.POST)
	public String adminLogin(Admin admin,Model model){
		Admin admin_now = as.adminLogin(admin);
		model.addAttribute("admin_now", admin_now);
		return "redirect:manage";
	}
	@RequestMapping("manage")
	public String manage(Model model) {
		//查询所有用户
		List<User> list = as.getAll(); 
		model.addAttribute("list", list);
		return "manage";
	}
	@RequestMapping("edit")
	public String edit(@RequestParam("uid") int uid,Model model) {
		User user = as.findById(uid);
		model.addAttribute("user", user);
		return "detail";
	}
}
