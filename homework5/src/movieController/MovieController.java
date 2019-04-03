package movieController;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class MovieController extends AbstractController {
    public MovieController(){

    }

    @Override
    protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response) throws Exception {
//        if(uri.endsWith("/movie/.htm")){
//            return new ModelAndView("MovieJSP");
//        }else if( uri.endsWith("/movie/add.htm")){
//            return new ModelAndView("AddMovieJSP");
//        }else if(uri.endsWith("/movie/search.htm")){
//            return new ModelAndView("SearchMovieJSP");
//        }

        return new ModelAndView("MovieJSP");
    }

}
