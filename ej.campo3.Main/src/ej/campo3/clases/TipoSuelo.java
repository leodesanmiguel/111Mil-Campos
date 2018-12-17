package ej.campo3.clases;

public class TipoSuelo {

    private String NroSuelo;

    public TipoSuelo(String NroSuelo) {
        this.NroSuelo = NroSuelo;
    }

    public TipoSuelo() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public String getNroSuelo() {
        return NroSuelo;
    }
    
    public void setNroSuelo(String NroSuelo_) {
        this.NroSuelo = NroSuelo_;
    }
            
    public void AsignarTipoSuelo() {
    }
    
    @Override
    public String toString(){
        return NroSuelo;
    }
}
