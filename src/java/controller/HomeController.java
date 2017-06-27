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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author amontess
 */
@Controller
@RequestMapping("Menu.htm")
public class HomeController {
    @RequestMapping(method = RequestMethod.GET)
    
    public ModelAndView menu(){
        ModelAndView mv= new ModelAndView();
        Perfil p = new Perfil(1, "admin");
        MenuModel menuModel= new MenuModel();
        List<Menu> listado=menuModel.getMenuXPerfil(p);
        mv.addObject("listadoMenu",listado);
        mv.setViewName("Menu");
        return mv;
    }
}
