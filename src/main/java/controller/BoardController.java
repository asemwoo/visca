package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import dao.BbsDao;
import vo.BbsDto;

public class BoardController implements Controller {

        protected void doGet (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/board.jsp");
            rd.forward(req, resp);
        }


        protected void doPost (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            req.setCharacterEncoding("UTF-8");
            HttpSession session = req.getSession();
            String sessionID = (String) session.getAttribute("sessionID");
            if (sessionID == null) {
                sessionID = "비회원";
            }

            String Category = req.getParameter("Category");
            String Title = req.getParameter("Title");
            String Content = req.getParameter("Content");

            BbsDao bbsDao = BbsDao.getInstance();
            BbsDto bbsDto = new BbsDto();
            bbsDto.setBbsId(bbsDao.nextval() + 1);
            bbsDto.setCategory(Category);
            bbsDto.setTitle(Title);
            bbsDto.setContent(Content);
            bbsDto.setId(sessionID);

            int wResult = bbsDao.write(bbsDto);
            System.out.println(wResult);
            resp.sendRedirect("bbs.do");
        }

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
