package entity;

public class Menu  implements java.io.Serializable {

     private int idMenu;
     private Perfil perfil;
     private String nombreMenu;
     private Integer padreMenu;
     private String destinoMenu;

    public Menu() {
    }

	
    public Menu(int idMenu, Perfil perfil, String nombreMenu) {
        this.idMenu = idMenu;
        this.perfil = perfil;
        this.nombreMenu = nombreMenu;
    }
    public Menu(int idMenu, Perfil perfil, String nombreMenu, Integer padreMenu, String destinoMenu) {
       this.idMenu = idMenu;
       this.perfil = perfil;
       this.nombreMenu = nombreMenu;
       this.padreMenu = padreMenu;
       this.destinoMenu = destinoMenu;
    }
   
    public int getIdMenu() {
        return this.idMenu;
    }
    
    public void setIdMenu(int idMenu) {
        this.idMenu = idMenu;
    }
    public Perfil getPerfil() {
        return this.perfil;
    }
    
    public void setPerfil(Perfil perfil) {
        this.perfil = perfil;
    }
    public String getNombreMenu() {
        return this.nombreMenu;
    }
    
    public void setNombreMenu(String nombreMenu) {
        this.nombreMenu = nombreMenu;
    }
    public Integer getPadreMenu() {
        return this.padreMenu;
    }
    
    public void setPadreMenu(Integer padreMenu) {
        this.padreMenu = padreMenu;
    }
    public String getDestinoMenu() {
        return this.destinoMenu;
    }
    
    public void setDestinoMenu(String destinoMenu) {
        this.destinoMenu = destinoMenu;
    }




}


