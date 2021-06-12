package controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import dao.BbsDao;
import vo.BbsDto;

public class BbsViewController implements Controller {
    private static final long serialVersionUID = 1L;
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        process(req, resp);
    }


    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        process(req, resp);
    }

    private void process(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String bbsId = req.getParameter("bbsId");
        BbsDao bbsDao = BbsDao.getInstance();
        BbsDto bbsDto = new BbsDto();
        bbsDao.hitUpdate(bbsId);
        bbsDto = bbsDao.selectById(bbsId);

        req.setAttribute("bbsview", bbsDto);

        RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/bbsview.jsp");
        rd.forward(req, resp);
    }


}
