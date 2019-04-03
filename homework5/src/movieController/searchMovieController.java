package movieController;

import DAOs.movieDAO;
import POJOs.MovieEntity;
import POJOs.searchPOJO;
import org.springframework.validation.BindException;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public class searchMovieController extends SimpleFormController {
    public searchMovieController() {
        this.setCommandClass(searchPOJO.class);
        this.setCommandName("searchPOJO");
    }

    @Override
    protected void onBindAndValidate(HttpServletRequest request, Object command, BindException errors) throws Exception {
        super.onBindAndValidate(request, command, errors);
    }

    @Override
    protected ModelAndView onSubmit(Object command, BindException errors) throws Exception {
        searchPOJO result = (searchPOJO) command;
        movieDAO moviedao = (movieDAO) getApplicationContext().getBean("movieDAO");
        List<MovieEntity> movielist = moviedao.searchMovie(result.getKeyword(), result.getType());
        System.out.println(movielist.size());
        return new ModelAndView(this.getSuccessView(),"movies",movielist);
    }
}
