/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.Menu;
import entity.Sorteo;
import entity.Usuario;
import java.util.LinkedList;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author admin
 */
public class UsuarioModel {
    private Session session;
    public UsuarioModel() {
        this.session=HibernateUtil.getSessionFactory().getCurrentSession();
    }
    
    public List<Usuario>getAllUsuario(){        
        List<Usuario>listadoUsuario=new LinkedList<>();
        try{
            Transaction tx=session.beginTransaction();
            listadoUsuario=session.createCriteria(Usuario.class).list() ;
            tx.commit();            
        }catch(HibernateException ex){
            ex.printStackTrace();
        }
        return listadoUsuario;
    }
    
    public void createUsuario(Usuario objUsuario){        
        Transaction tx=session.beginTransaction();
        try{            
            session.save(objUsuario);                 
        }catch(HibernateException ex){
            ex.printStackTrace();
            tx.rollback();
        }
        
    }
    
    public void updateUsuario(Menu objUsuario){        
        Transaction tx=session.beginTransaction();
        try{            
            session.update(objUsuario);
            tx.commit();            
        }catch(HibernateException ex){
            ex.printStackTrace();
            tx.rollback();
        }        
    }
    
    public void removeUsuario(Usuario objUsuario){        
        Transaction tx=session.beginTransaction();
        try{            
            session.delete(objUsuario);
            tx.commit();            
        }catch(HibernateException ex){
            ex.printStackTrace();
            tx.rollback();
        }
        
    }
    
    public Usuario getUsuario(int id){
        Usuario objUsuario=null;
        Transaction tx=session.beginTransaction();
        try{
            objUsuario=(Usuario)session.get(Usuario.class,id);
            tx.commit();            
        }catch(HibernateException ex){
            ex.printStackTrace();
            tx.rollback();
        }
        return objUsuario;
    }
}
