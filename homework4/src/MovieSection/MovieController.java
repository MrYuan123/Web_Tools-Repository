package MovieSection;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class MovieController extends AbstractController {
    public MovieController(){

    }

    @Override
    protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String url = request.getRequestURI();
        if(url.equals("/movie")) {
            return new ModelAndView("MovieJSP");
        }else{
            return new ModelAndView("MovieJSP-Part5");
        }
    }

}
