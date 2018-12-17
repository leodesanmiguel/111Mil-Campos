package ej.campo3.clases;

public class Lote {

    private String NroLote;

    private Short SuperficieLote;
    
    private String tSuelo;

    public Lote() {
        
    }

    public Lote(String NroLote, Short SuperficieLote, String tSuelo) {
        this.NroLote = NroLote;
        this.SuperficieLote = SuperficieLote;
        this.tSuelo = tSuelo;
    }

    

     public String getNroLote() {
        return NroLote;
    }    

     public void setNroLote(String NroLote_) {
        this.NroLote = NroLote_;
    }

    public Short getSuperficieLote() {
        return SuperficieLote;
    }

    public void setSuperficieLote(Short SuperficieLote) {
        this.SuperficieLote = SuperficieLote;
    }

    public String gettSuelo() {
        return tSuelo;
    }

    public void settSuelo(String tSuelo) {
        this.tSuelo = tSuelo;
    }
    
    

    
    

     public boolean ValidarNroLote() {
        /*
            Deberá buscar en la base si el nombre de campo
            Esta vigente o no.
            Por ahora si...
        */
        return true;
     }


    public void IngresarSuperficie() {
    }

    public void MostrarDatosLote() {
    }

    public void EditarLote() {
    }

    public void QuitarLote() {
    }

   

  
    
}
