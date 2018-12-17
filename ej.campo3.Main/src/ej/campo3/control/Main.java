/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej.campo3.control;

import ej.campo3.frm.frmRegistrarCampos;
/**
 *
 * @author Leo
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        frmRegistrarCampos regCampo = new frmRegistrarCampos();
        regCampo.setBounds(100, 100, 650, 500);
        regCampo.setResizable(true);
        regCampo.setTitle("Registrar Campo");
        
        regCampo.setVisible(true);
        
    }
    
}
