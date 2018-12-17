package ej.campo3.clases;

public class Minerales {

    private float PorcentMinaral;

    private String NombreMineral;

    public Minerales() {
    }

    public Minerales(float PorcentMinaral, String NombreMineral) {
        this.PorcentMinaral = PorcentMinaral;
        this.NombreMineral = NombreMineral;
    }

    public float getPorcentMinaral() {
        return PorcentMinaral;
    }

    public void setPorcentMinaral(float PorcentMinaral) {
        this.PorcentMinaral = PorcentMinaral;
    }

    public String getNombreMineral() {
        return NombreMineral;
    }

    public void setNombreMineral(String NombreMineral) {
        this.NombreMineral = NombreMineral;
    }

   

    public void RegistrarPorcentaje() {
    }
    
     @Override
    public String toString() {
        return "Minerales{" + "PorcentMinaral=" + PorcentMinaral + ", NombreMineral=" + NombreMineral + '}';
    }
    
    
}
