package view;

import jakarta.servlet.http.Part;
import java.io.IOException;
import java.io.InputStream;

public class FileUpload {
    private Part part;

    public FileUpload(Part part) {
        this.part = part;
    }

    public String getFileName() {
        String contentDisposition = part.getHeader("content-disposition");