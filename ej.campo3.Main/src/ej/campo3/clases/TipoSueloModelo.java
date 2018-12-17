/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej.campo3.clases;

/**
 *
 * @author Leo
 */
public class TipoSueloModelo {
    

   private String sueloID;
   private String sueloName;

   public TipoSueloModelo(String sueloID, String sueloName) {
      this.sueloID = sueloID;
      this.sueloName = sueloName;
   }

   public String getProductId() {
      return sueloID;
   }

   public String getProductName() {
      return sueloName;
   }

   @Override
   public String toString() {
      return sueloName;
   }
}