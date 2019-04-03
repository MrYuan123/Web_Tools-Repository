package movieController;

import DAOs.movieDAO;
import POJOs.MovieEntity;
import org.springframework.validation.BindException;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;

import javax.servlet.http.HttpServletRequest;

public class addMovieController extends SimpleFormController {


    public addMovieController() {
        this.setCommandClass(MovieEntity.class);
        this.setCommandName("MovieEntity");
    }

    @Override
    protected void onBindAndValidate(HttpServletRequest request, Object command, BindException errors) throws Exception {
        super.onBindAndValidate(request, command, errors);
    }

    @Override
    protected ModelAndView onSubmit(Object command, BindException errors) throws Exception {
        MovieEntity movieObj = (MovieEntity) command;
        movieDAO moviedao = (movieDAO) getApplicationContext().getBean("movieDAO");
        boolean result = moviedao.addMovie(movieObj);
        if(result == true){
            System.out.println("Add successfully!");
        }else{
            System.out.println("Add Fails");
        }
        return new ModelAndView(this.getSuccessView());
    }


}
