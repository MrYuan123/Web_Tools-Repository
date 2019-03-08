package MovieSection;

import DAO.databaseOps;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

public class AddController extends AbstractController {

    @Override
    protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response) throws Exception {
        if(request.getMethod().equals("GET"))
            return new ModelAndView("AddMovieJSP");

        List<String> nowlist = new ArrayList<String>();
        Enumeration parameterNames = request.getParameterNames();
        while(parameterNames.hasMoreElements()){
            String paramName = (String)parameterNames.nextElement();
            String paramValue = request.getParameter(paramName);
            nowlist.add(paramValue);
        }

        ModelAndView nowview = new ModelAndView("ResultJSP");
        try{
            databaseOps dbsOps = databaseOps.getInstance();
            boolean result = dbsOps.submitMovie(nowlist);
            if(result == true){
                nowview.addObject("result", " Movie has been added!");
                nowview.addObject("formerpage", "/addmovie");
                return nowview;
            }
            else{
                nowview.addObject("result", "Add Movie Fails!");
                nowview.addObject("formerpage", "/addmovie");
                return nowview;
            }
        }catch (Exception e){
            System.out.println(e.getMessage());

        }
        return new ModelAndView("Error");
    }
}
