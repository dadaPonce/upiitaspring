package org.upiita.spring.controladores;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.upiita.spring.formas.FormaSesion;

@Controller
public class LoginControlador {
	
	@Autowired
	private FormaSesion formasesion;
	
	@RequestMapping(value="/login")
	public String Login(Boolean errorLogin, Model modelo, HttpSession sesion){
    modelo.addAttribute("errorLogin", errorLogin);
    sesion.setAttribute("variable", 10);
    formasesion.setItemsComprados(100);
    
	return "login";
	}
	
	@RequestMapping(value="/error-403")
	public String Error403(Authentication autentication, Model modelo){
		System.out.println("Nombre: "+autentication.getName());
		System.out.println("Password: "+autentication.getCredentials());
		System.out.println("Roles: "+autentication.getAuthorities());
		
		modelo.addAttribute("email",autentication.getName());
		

	return "error-403";
	}
}
