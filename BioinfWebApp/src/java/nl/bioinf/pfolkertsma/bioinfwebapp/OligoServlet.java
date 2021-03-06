/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nl.bioinf.pfolkertsma.bioinfwebapp;

/**
 *
 * @author pfolkertsma
 */
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet(name = "/OligoServlet", urlPatterns = {"/createoligos.do"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, // 10 MB
        maxFileSize = 1024 * 1024 * 50, // 50 MB
        maxRequestSize = 1024 * 1024 * 100)      // 100 MB

public class OligoServlet extends HttpServlet {
    /**
     * Directory where uploaded files will be saved, its relative to the web
     * application directory.
     */
    private static final String UPLOAD_DIR = "files";
    /**
     * This method processes the request.
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException 
     */
    protected void processRequest(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        String uploadFilePath = request.getServletContext().getRealPath("") + File.separator + UPLOAD_DIR;
        //The upload directory gets created if it does not exist. 
        File fileSaveDir = new File(uploadFilePath);
        if (!fileSaveDir.exists()) {
            fileSaveDir.mkdirs();
        }
        //The file and file name or fetched.
        Part file = request.getPart("fileName");
        String fileName = getFileName(file);
        //Checks if the given file is a fasta or txt file. 
        if (fileName.endsWith("fa") || fileName.endsWith("txt")) {
            file.write(uploadFilePath + File.separator + fileName);
            String path = uploadFilePath + File.separator + fileName;
            String oligoPath = uploadFilePath + File.separator + fileName.substring(0, fileName.length() - 3) + "oligos.fa";
            String monoRepeats = request.getParameter("monorepeats");
            String diRepeats = request.getParameter("direpeats");
            String hairpins = request.getParameter("hairpins");
            String temperature = request.getParameter("temperature");
            String size = request.getParameter("size");
            if (request.getParameter("monorepeats") != null) {
                Input.setMonoRepeats();
            }
            if (request.getParameter("direpeats") != null) {
                Input.setDiRepeats();
            }
            if (request.getParameter("hairpins") != null) {
                Input.setHairpins();
            }
            Input.setTemp(temperature);
            Input.setSize(size);
            //A new OligoCreator object is made and with its methods the oligo
            //file gets created.
            OligoCreator oc = new OligoCreator();
            oc.setPathFastafile(path);
            oc.parseFastafile();
            oc.writeOligosToFasta(oligoPath);
            //The oligo file is set for download and gets forced to download
            //the file instead of showing it in the browser.
            File downloadFile = new File(oligoPath);
            FileInputStream inStream = new FileInputStream(downloadFile);
            ServletContext context = getServletContext();
            String mimeType = context.getMimeType(oligoPath);
            if (mimeType == null) {
                // set to binary type if MIME mapping not found
                mimeType = "application/octet-stream";
            }
            response.setContentType(mimeType);
            response.setContentLength((int) downloadFile.length());
            String headerKey = "Content-Disposition";
            String headerValue = String.format("attachment; filename=\"%s\"", downloadFile.getName());
            response.setHeader(headerKey, headerValue);
            OutputStream outStream = response.getOutputStream();
            byte[] buffer = new byte[4096];
            int bytesRead = -1;
            while ((bytesRead = inStream.read(buffer)) != -1) {
                outStream.write(buffer, 0, bytesRead);
            }
            inStream.close();
            outStream.close();
        } else {
            request.setAttribute("message", "Please upload a fasta or txt file!");
            RequestDispatcher view = request.getRequestDispatcher("tools.jsp");
            view.forward(request, response);
        }
   }

    /**
     * Utility method to get file name from HTTP header content-disposition.
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
