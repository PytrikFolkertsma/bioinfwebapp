/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nl.bioinf.salbassam.bioinfwebapp.MolecularWeightCalculator;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author salbassam <s.albassam@st.hanze.nl>
 */
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, // 10 MB
        maxFileSize = 1024 * 1024 * 50, // 50 MB
        maxRequestSize = 1024 * 1024 * 100)      // 100 MB
public class MolecularWeightServlet extends HttpServlet {

    /**
     * Directory where uploaded files will be saved, its relative to the web
     * application directory.
     */
    private static final String UPLOAD_DIR = "files";

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
        String uploadFilePath = request.getServletContext().getRealPath("") + File.separator + UPLOAD_DIR;

        File fileSaveDir = new File(uploadFilePath);
        if (!fileSaveDir.exists()) {
            fileSaveDir.mkdirs();
        }

        Part file = request.getPart("fileName");
        String fileName = getFileName(file);
        try {
            if (fileName.equals("")) {
                String userInput = request.getParameter("inputByText");
//            String userInput = request.getParameter("inputByText");
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
                request.setAttribute("test", resultMolMassMap);
                //            Testing results to frontend
                RequestDispatcher view = request.getRequestDispatcher("tools.jsp");
                view.forward(request, response);
            } else {
                file.write(uploadFilePath + File.separator + fileName);
                String path = uploadFilePath + File.separator + fileName;
                mw.setPathFastafile(path);
                mw.parseFastafile();
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
                    fastaMap = mw.convertToHashMap();
                    Map<String, String> convertedSequenceMap = mw.convertAmbiguityCodesFromSequence(fastaMap);
                    Map<String, String> doubleStrandMap = mw.getDoubleStrand((HashMap<String, String>) convertedSequenceMap);
                    resultMolMassMap = mw.calculateMolMass((HashMap<String, String>) doubleStrandMap);
                } else {
//          when Default (Single stranded) is selected for further process
                    fastaMap = mw.convertToHashMap();
                    Map<String, String> convertedSequenceMap = mw.convertAmbiguityCodesFromSequence(fastaMap);
                    resultMolMassMap = mw.calculateMolMass((HashMap<String, String>) convertedSequenceMap);
                }
                request.setAttribute("test", resultMolMassMap);
                //            Testing results to frontend
                RequestDispatcher view = request.getRequestDispatcher("tools.jsp");
                view.forward(request, response);
            }

        } catch (IOException e) {
            System.out.println("Something went wrong with the input or output:\t" + e);
//            out.close();

        }
    }

    /**
     * Utility method to get file name from HTTP header content-disposition
     */
    private String getFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        System.out.println("content-disposition header= " + contentDisp);
        String[] tokens = contentDisp.split(";");
        for (String token : tokens) {
            if (token.trim().startsWith("filename")) {
                return token.substring(token.indexOf("=") + 2, token.length() - 1);
            }
        }
        return "";
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
