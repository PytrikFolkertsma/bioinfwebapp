/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nl.bioinf.nl.dnatranslator;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author lsteenhuis
 */
@WebServlet(name = "TranslatingServlet", urlPatterns = {"/Translating.do"})
public class TranslatingServlet extends HttpServlet {
    private static Map<String, String> aminoAcidCodons;


    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String dnaSequence = request.getParameter("sequence_input");
        String frames =  request.getParameter("frames");
        int startPosition = Integer.parseInt(frames);
        dnaSequence = dnaSequence.replaceAll("(\\r|\\n|\\s+)", "");
        StringBuilder translatedSequence;
        translatedSequence = translateDna(dnaSequence,startPosition);
        out.println(translatedSequence);
        out.flush();
        out.close();
    }



    protected static StringBuilder translateDna(String dnaSequence, int startPosition)
            throws Exception {
        System.out.println("DnaSequence in translateDna : " + dnaSequence);
        int sequenceLength = dnaSequence.length();
        System.out.println("sequence Length: " + sequenceLength);

        StringBuilder aminoAcidSequence = new StringBuilder("");
        int start = startPosition;
        int end = start + 3;
        while(!(start >= sequenceLength)) {
        start = start + 3;
        end = start +3;

        String dnaCodon = "";
            try{
                dnaCodon = dnaSequence.substring(start, end);
            } catch(StringIndexOutOfBoundsException ex) {
                //silent
            }
            if(dnaCodon.length() < 3 || ! aminoAcidCodons.containsKey(dnaCodon)) {
                continue;
            }
            Object aminoAcid = aminoAcidCodons.get(dnaCodon);
            aminoAcidSequence.append(aminoAcid.toString());
        }
        return aminoAcidSequence;
    }

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config); //To change body of generated methods, choose Tools | Templates.
        createCodonTable();
    }

    public static void createCodonTable(){
        aminoAcidCodons = new HashMap<String, String>();
        aminoAcidCodons.put("ATG", "START");
        aminoAcidCodons.put("TAA", "STOP");
        aminoAcidCodons.put("TGA", "STOP");
        aminoAcidCodons.put("TAG", "STOP");

        aminoAcidCodons.put("GCT","A");
        aminoAcidCodons.put("GCC","A");
        aminoAcidCodons.put("GCA","A");
        aminoAcidCodons.put("GCG","A");

        aminoAcidCodons.put("CGT", "R");
        aminoAcidCodons.put("CGC", "R");
        aminoAcidCodons.put("CGA", "R");
        aminoAcidCodons.put("CGG", "R");
        aminoAcidCodons.put("AGA", "R");
        aminoAcidCodons.put("AGG", "R");

        aminoAcidCodons.put("AAT", "N");
        aminoAcidCodons.put("AAC", "N");

        aminoAcidCodons.put("GAT", "D");
        aminoAcidCodons.put("GAC", "D");

        aminoAcidCodons.put("TGT", "C");
        aminoAcidCodons.put("TGC", "C");

        aminoAcidCodons.put("CAA", "Q");
        aminoAcidCodons.put("CAG", "Q");

        aminoAcidCodons.put("GAA", "E");
        aminoAcidCodons.put("GAG", "E");

        aminoAcidCodons.put("GGT", "G");
        aminoAcidCodons.put("GGC", "G");
        aminoAcidCodons.put("GGA", "G");
        aminoAcidCodons.put("GGG", "G");

        aminoAcidCodons.put("CAT", "H");
        aminoAcidCodons.put("CAC", "H");

        aminoAcidCodons.put("ATT", "I");
        aminoAcidCodons.put("ATC", "I");
        aminoAcidCodons.put("ATA", "I");

        aminoAcidCodons.put("TTA", "L");
        aminoAcidCodons.put("TTG", "L");
        aminoAcidCodons.put("CTT", "L");
        aminoAcidCodons.put("CTC", "L");
        aminoAcidCodons.put("CTA", "L");
        aminoAcidCodons.put("CTG", "L");

        aminoAcidCodons.put("AAA", "K");
        aminoAcidCodons.put("AAG", "K");

        aminoAcidCodons.put("TTT", "F");
        aminoAcidCodons.put("TTC", "F");

        aminoAcidCodons.put("CCT", "P");
        aminoAcidCodons.put("CCC", "P");
        aminoAcidCodons.put("CCA", "P");
        aminoAcidCodons.put("CCG", "P");

        aminoAcidCodons.put("TCT", "S");
        aminoAcidCodons.put("TCC", "S");
        aminoAcidCodons.put("TCA", "S");
        aminoAcidCodons.put("TCG", "S");
        aminoAcidCodons.put("AGT", "S");
        aminoAcidCodons.put("AGC", "S");

        aminoAcidCodons.put("ACT", "T");
        aminoAcidCodons.put("ACC", "T");
        aminoAcidCodons.put("ACA", "T");
        aminoAcidCodons.put("ACG", "T");

        aminoAcidCodons.put("TGG", "W");

        aminoAcidCodons.put("TAT", "Y");
        aminoAcidCodons.put("TAC", "Y");

        aminoAcidCodons.put("GTT", "V");
        aminoAcidCodons.put("GTC", "V");
        aminoAcidCodons.put("GTA", "V");
        aminoAcidCodons.put("GTG", "V");


    }



    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        try {
//            processRequest(request, response);
//        } catch (Exception ex) {
//            Logger.getLogger(TranslatingServlet.class.getName()).log(Level.SEVERE, null, ex);
//        }
//    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(TranslatingServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
