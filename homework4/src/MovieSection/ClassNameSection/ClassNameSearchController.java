package MovieSection.ClassNameSection;

import DAO.databaseOps;
import POJO.movieBean;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

public class ClassNameSearchController extends AbstractController {
    public ClassNameSearchController() {
    }

    @Override
    protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response) throws Exception {
        if(request.getMethod().equals("GET"))
            return new ModelAndView("SearchMovieJSP-Part6");

        ModelAndView now = new ModelAndView("MovieDisplay");
        String type = request.getParameter("type");
        String keyword = request.getParameter("keyword");

        try{
            databaseOps dbsOps = databaseOps.getInstance();
            List<movieBean> result = dbsOps.SearchOps(type, keyword);
            now.addObject("list", result);
            System.out.println("Search Database Successfully! ");
            return now;
        }catch (Exception e){
            System.out.println("Search Database Fails! " + e.getMessage());
        }
        return new ModelAndView("Error");
    }
}
