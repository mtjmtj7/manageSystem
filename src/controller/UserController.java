package controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import service.OrderService;
import service.UserService;
import bean.Flower;
import bean.Order;
import bean.User;

@Controller
@SessionAttributes("user_now")
public class UserController {

	Map<Integer, Integer> map = new HashMap<Integer, Integer>();
	@Autowired
	private UserService us;
	//登陆
	@RequestMapping(value="userLogin",method=RequestMethod.POST)
	public String login(Model model,User user) {
		User uu = us.userLogin(user);
		if(uu != null) {
			model.addAttribute("user_now", uu);
			return "redirect:main";
		}
		return "error";
	}
	//注册跳转
	@RequestMapping(value="regist",method=RequestMethod.GET)
	public String regist(){
		return "regist";
	}
	//注册
	@RequestMapping(value="userRegist",method=RequestMethod.POST)
	public String userRegist(User user){
		if(user.getUserSex().equals("n")){
			user.setUserSex("男");
		} else if(user.getUserSex().equals("nv")) {
			user.setUserSex("女");
		} else{
			user.setUserSex("其他");
		}
		int res = us.userRegist(user);
		if(res>0)
			return "redirect:index.jsp";
		else
			return "regist";
	}
	//查询所有
	@RequestMapping(value="main",method=RequestMethod.GET)
	public String main(Model model) {
		List<Flower> list = us.getAll();
		model.addAttribute("list", list);
		return "main";
	}
	//搜索
	@RequestMapping(value="search",method=RequestMethod.GET)
	public String search(@RequestParam("key") String key,@RequestParam("other") String other,Model model) {
		List<Flower> list = us.search(key,other);
		if(list.size() > 0) {
			model.addAttribute("list_len", 999);
			model.addAttribute("list", list);
		}
		else {
			model.addAttribute("list_len", 0);
		}
		return "main";
	}
	//购物车ID
	@ResponseBody
	@RequestMapping(value="buy",method=RequestMethod.POST)
	public String buyIDs(@RequestParam("id")  int id) {
//		for(Object key:map.keySet()){
//			if(map.get(key)!=id) {
//				map.put(id, 1);
//			}
//			else {
//	            int value = (int) map.get(key);
//	            map.put((Integer) key, value+1);
//			}
//        }
		if(map.containsKey(id)){
			int value = (int) map.get(id);
            map.put((Integer) id, value+1);
		}
		else {
			map.put(id, 1);
		}
		return "yes";
	}
	//购物车
	@RequestMapping(value="cart",method=RequestMethod.GET)
	public String cart(Model model) {
		List<Flower> list = new ArrayList<Flower>();
		for(Object key:map.keySet()){
            Flower fw = us.findById((int)key);
            list.add(fw);
        }
		model.addAttribute("list", list);
		model.addAttribute("map", map);
		return "cart";
	}
	//购物车修改数量
	@ResponseBody
	@RequestMapping(value="change",method=RequestMethod.POST)
	public String change(@RequestParam("id")  int id,@RequestParam("num")  int num) {

		if(map.containsKey(id)){
            map.put((Integer) id, num);
            return "yes";
		}
		return "no";
	}
	//
	@Autowired
	private OrderService os;
	@ResponseBody
	@RequestMapping(value="pay",method=RequestMethod.POST)
	public String pay(HttpServletRequest request) {
		//生成订单
		int res = 0;
		for(Object key:map.keySet()){
            Flower fw = us.findById((int)key);
            Order order = new Order();
            User user = (User)request.getSession().getAttribute("user_now");
            order.setFlo_name(fw.getFlo_name());
            order.setQuantity(String.valueOf(map.get(key)));
            int danjia = Integer.parseInt(fw.getUnit_price());
            int shuliang = Integer.parseInt(order.getQuantity());
            order.setTotal_price(String.valueOf(danjia*shuliang));
            order.setUnit_price(fw.getUnit_price());
            order.setUserAddress(user.getUserAddress());
            order.setUserName(user.getUserTruename());
            order.setUserPhone(user.getUserPhone());
            res += os.add(order);
        }
		if(res > 0)
			return "yes";
		else
			return "no";
	}
	//订单列表
	@RequestMapping(value="myorder", method=RequestMethod.GET)
	public String myorder(HttpServletRequest request,Model model){
		User user = (User)request.getSession().getAttribute("user_now"); 
		System.out.println(user.toString());
		String name = user.getUserTruename();
		List<Order> list = os.findByName(name);
		model.addAttribute("list", list);
		return "myorder";
	}
	//删除一条订单
	@RequestMapping(value="remove", method=RequestMethod.GET)
	public String remove(@RequestParam("id") int id){
		
		return "myorder";
	}

}
