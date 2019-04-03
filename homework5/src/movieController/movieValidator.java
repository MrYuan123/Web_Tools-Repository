package movieController;

import POJOs.MovieEntity;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class movieValidator implements Validator {
    @Override
    public boolean supports(Class clazz) {
        return clazz.equals(MovieEntity.class);
    }
    @Override
    public void validate(Object obj, Errors err) {
        ValidationUtils.rejectIfEmptyOrWhitespace(err, "title","title.required", "title invalid");
        ValidationUtils.rejectIfEmptyOrWhitespace(err, "actor","actor.required", "actor invalid");
        ValidationUtils.rejectIfEmptyOrWhitespace(err, "actress","actress.required", "actress invalid");
        ValidationUtils.rejectIfEmptyOrWhitespace(err, "genre","genre.required", "genre invalid");
        MovieEntity movieObj = (MovieEntity) obj;
        if(movieObj.getYear() == 0){
            ValidationUtils.rejectIfEmptyOrWhitespace(err, "year","year.required", "year invalid");
        }
        else{
            if(movieObj.getYear() > 2019 || movieObj.getYear() < 1900){
                err.rejectValue("year", "year.required", "year invalid");
            }
        }

    }
}
