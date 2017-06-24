/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.Menu;
import entity.Perfil;
import java.util.List;
import model.MenuModel;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author amontess
 */
@Controller
public class HomeController {
    @RequestMapping("home.htm")
    
    public ModelAndView home(){
        ModelAndView mv= new ModelAndView();
        Perfil p = new Perfil(1, "admin");
        MenuModel menuModel= new MenuModel();
        List<Menu> listado=menuModel.getAllMenuXPerfil(p);
        mv.addObject("lista",listado);
        mv.setViewName("home");
        return mv;
    }
}
