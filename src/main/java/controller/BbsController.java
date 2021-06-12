package controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BbsController implements Controller {
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    private static final long serialVersionUID = 1L;


        protected void doGet (HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
            process(req, resp);
        }


        protected void doPost (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            process(req, resp);
        }

        private void process (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/bbs.jsp");
            rd.forward(req, resp);
        }
    }
