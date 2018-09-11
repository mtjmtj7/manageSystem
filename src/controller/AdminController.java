package controller;


import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import service.AdminService;
import service.OrderService;
import service.UserService;
import bean.Admin;
import bean.Flower;
import bean.Order;
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
	@RequestMapping("update")
	public String uddate(User user,Model model,HttpServletRequest request,HttpServletResponse response){
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(user.toString());
		int res = as.update(user);
		if(res>0)
			return "redirect:manage";
		else{
			model.addAttribute("user", user);
			return "detail";
		}
	}
	@RequestMapping("delete")
	public String delete(@RequestParam("uid") int uid){
		int res = as.delete(uid);
		return "redirect:manage";
	}
	@RequestMapping("add")
	public String add(User user) {
		return "add";
	}
	
	@Autowired
	private UserService us;
	
	@RequestMapping("addUser")
	public String addUser(User user){
		if(user.getUserSex().equals("n")) user.setUserSex("男");
		else if(user.getUserSex().equals("nv")) user.setUserSex("女");
		else  user.setUserSex("其他");
		int res = us.userRegist(user);
		if(res > 0)
			return "redirect:manage";
		else
			return "redirect:add";
	}
	
	
	@RequestMapping("flowerManage")
	public String fm(Model model) {
		List<Flower> list = us.getAll();
		model.addAttribute("list", list);
		return "flowerManage";
	}
	
	@RequestMapping("editFlower")
	public String editf(@RequestParam("fid") int fid,Model model){
		Flower fw = us.findById(fid);
		fw.setFlo_id(fid);
		model.addAttribute("fw", fw);
		return "flowerDetail";
	}
	@RequestMapping("updateFlower")
	public String updateF(Flower fw,Model model){
		System.out.println(fw.toString());
		int res = as.updateFlower(fw);
		if(res>0)
			return "redirect:flowerManage";
		else{
			model.addAttribute("fw", fw);
			return "flowerDetail";
		}
	}
	@RequestMapping("addFlower")
	public String addf(){
		return "addFlower";
	}
	@RequestMapping("addOneFlower")
	public String addOneFlower(Flower fw,Model model){
		int res = as.addOneFlower(fw);
		if(res>0)
			return "redirect:flowerManage";
		else{
			model.addAttribute("fw", fw);
			return "addOneFlower";
		}
	}
	@RequestMapping("deleteFlower")
	public String deleteFlower(@RequestParam("fid") int id,Model model){
		as.deleteFlower(id);
		return "redirect:flowerManage";
	}
	
	@Autowired
	private OrderService os;
	@RequestMapping("orderManage")
	public String orderManage(Model model){
		List<Order> list = os.getAll();
		model.addAttribute("list", list);
		return "orderManage";
	}
	
}
