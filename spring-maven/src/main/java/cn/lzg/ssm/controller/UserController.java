package cn.lzg.ssm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.lzg.ssm.pojo.User;
import cn.lzg.ssm.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/list")
	public String lists(Model m) {
		List<User> list = userService.selectList();
		//共享数据
		m.addAttribute("users", list);
		
		return "userList";
	}
	
	@RequestMapping("delete")
	public String deleteUserById(Integer userId) {
		userService.deleteByPrimaryKey(userId);
		
		//重定向redirect	请求转发forward:
		return "redirect:/user/list.do";
	}
}
