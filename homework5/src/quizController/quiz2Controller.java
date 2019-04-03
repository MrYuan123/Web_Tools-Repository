package quizController;

import POJOs.answerPOJO;
import POJOs.quizPOJO;
import org.springframework.validation.BindException;
import org.springframework.validation.Errors;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractWizardFormController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;

public class quiz2Controller extends AbstractWizardFormController {
    private String successView;
    private String cancelView;

    public String getSuccessView() {
        return successView;
    }

    public void setSuccessView(String successView) {
        this.successView = successView;
    }

    public String getCancelView() {
        return cancelView;
    }

    public void setCancelView(String cancelView) {
        this.cancelView = cancelView;
    }

    public quiz2Controller() {
    }

    @Override
    protected ModelAndView processCancel(HttpServletRequest req,HttpServletResponse res,Object command,BindException errs)throws Exception{
        return new ModelAndView(this.cancelView);
    }

    @Override
    protected ModelAndView processFinish(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, BindException e) throws Exception {
        ModelAndView now = new ModelAndView(this.successView);
        answerPOJO answer = (answerPOJO) o;
        now.addObject("answer", answer);
        return now;
    }

}
