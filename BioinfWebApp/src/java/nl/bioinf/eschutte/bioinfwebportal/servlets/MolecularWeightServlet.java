/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nl.bioinf.eschutte.bioinfwebportal.servlets;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import nl.bioinf.bioinfwebportal.code.MolecularWeight;

/**
 *
 * @author salbassam
 */
public class MolecularWeightServlet extends HttpServlet {

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
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
//        PrintWriter out = response.getWriter();
        MolecularWeight mw = new MolecularWeight();
        try {
//          get userinput of type FASTA
            String userInput = request.getParameter("inputByText");
            String strandType = "";
//          Create HashMap for userinput
            HashMap<String, String> fastaMap = null;
//          Create HashMap for the Mol Mass results per header
            Map<String, Double> resultMolMassMap = null;
//          select sequence strand type for further process
            if (request.getParameter("item") != null) {
                strandType = request.getParameter("item");
            }
//          when Double stranded is selected the following is being processed
            if (strandType.equals("Double")) {
                fastaMap = mw.digestUserInput(userInput);
                Map<String, String> convertedSequenceMap = mw.convertAmbiguityCodesFromSequence(fastaMap);
                Map<String, String> doubleStrandMap = mw.getDoubleStrand((HashMap<String, String>) convertedSequenceMap);
                resultMolMassMap = mw.calculateMolMass((HashMap<String, String>) doubleStrandMap);
            } else {
//          when Default (Single stranded) is selected for further process
                fastaMap = mw.digestUserInput(userInput);
                Map<String, String> convertedSequenceMap = mw.convertAmbiguityCodesFromSequence(fastaMap);
                resultMolMassMap = mw.calculateMolMass((HashMap<String, String>) convertedSequenceMap);
            }
//            Testing results to frontend
            request.setAttribute("test", resultMolMassMap);
            RequestDispatcher view = request.getRequestDispatcher("tools.jsp");
            view.forward(request, response);
        } catch (IOException e) {
            System.out.println("Something went wrong with the input or output:\t" + e);
//            out.close();
        }
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
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

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
        processRequest(request, response);
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
