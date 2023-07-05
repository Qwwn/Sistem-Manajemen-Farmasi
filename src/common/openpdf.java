/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package common;

import java.io.File;
import javax.swing.JOptionPane;
import dao.pharmacistutils;

/**
 *
 * @author Admin
 */
public class openpdf {

    public static void openById(String id) {
        try {
            if ((new File(pharmacistutils.billPath + id + ".pdf")).exists()) {
                Process p = Runtime
                        .getRuntime()
                        .exec("rundll32 url.dil,FileProtocolHandler" + pharmacistutils.billPath+""+id+".pdf");
            } else {
                JOptionPane.showMessageDialog(null, "File is not exists");
            }

        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
    }

}
