package com.web.bank.controller;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.web.bank.entity.AccountUser;
import com.web.bank.model.GenerateAccNO;
import com.web.bank.model.Login;
import com.web.bank.service.AccountUserService;

import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/bank")
public class AccountUserController {

	@Autowired
	private AccountUserService accountUserService;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@GetMapping("/")
	public String index()
	{
		return "index";
	}
	
	@GetMapping("/registration")
	public String registration()
	{
		return "registration";
	}
	
	@GetMapping("/login")
	public String login()
	{
		return "login";
	}
	
	
	@PostMapping("/validate")
	public String getUser(@ModelAttribute Login user, Model model, HttpSession httpSession) {

	    AccountUser u = accountUserService.findByEmail(user.getEmail());

	    if (u != null) {
	    	if (!passwordEncoder.matches(user.getPassword(), u.getPassword())) {
	    	    model.addAttribute("error", "Incorrect Password");
	    	    return "login";
	    	}

	        httpSession.setAttribute("loggedInUser", u);
	        return "redirect:/bank/home";  // ✅ Redirect instead of returning "home"
	    } else {
	        model.addAttribute("error", "User not found");
	        return "login";
	    }
	}

	@GetMapping("/home")
	public String home(HttpServletResponse response, HttpSession session, Model model) {
	    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	    response.setHeader("Pragma", "no-cache");
	    response.setHeader("Expires", "0");

	    AccountUser user = (AccountUser) session.getAttribute("loggedInUser");
	    if (user == null) {
	        return "login";
	    }
	    model.addAttribute("user", user);
	    return "home";
	}

	
	@PostMapping("/createAccount")
	public String saveuser(@ModelAttribute AccountUser user,Model model)
	{
		user.setAccountopendate(LocalDate.now());
		user.setAccountnumber(GenerateAccNO.generate());
		
		user.setPassword(passwordEncoder.encode(user.getPassword()));
		
		user.setBalance("25000");
		
		AccountUser u = accountUserService.save(user);
		
		if(u != null)
		{
			model.addAttribute("msg", "Account created Sucessfully");
			
			return "registration";
		}
		
		model.addAttribute("msg", "Account not created try again");
		return "registration";
	}

	@GetMapping("/logout")
	public String logout(HttpSession session, Model model)
	{
	    session.invalidate();

	    model.addAttribute("msg", "You have been logged out successfully.");
	    return "login";
	}

}
