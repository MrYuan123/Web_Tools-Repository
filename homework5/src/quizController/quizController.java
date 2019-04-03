package quizController;

import POJOs.quizPOJO;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

public class quizController extends AbstractController {

    @Override
    protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ModelAndView result = new ModelAndView("quiz");
        if(request.getMethod().equals("GET")){
            result.addObject("type", "quiz");
            quizPOJO quizObj = new quizPOJO();
            quizObj.setQuestion("What is the range of short data type in Java?");
            List<String> nowlist = quizObj.getAnswers();
            nowlist.add("-128 to 127");
            nowlist.add("-32768 to 32767");
            nowlist.add("-2147483648 to 2147483647");
            nowlist.add("None of the mentioned");
            result.addObject("quiz", quizObj);
            result.addObject("nextUrl", "/quiz/2.htm");
            return result;
        }

        HttpSession session = request.getSession(true);
        session.setAttribute(request.getParameter("question"), request.getParameter("answer"));

        String url = request.getRequestURI();
        if(url.endsWith("result.htm"))  return resultDisplay(request, result);
        return nextPageGenerator(request, result);

    }

    private ModelAndView resultDisplay(HttpServletRequest request, ModelAndView result){
        result.addObject("type", "result");
        return result;
    }

    private ModelAndView nextPageGenerator(HttpServletRequest request, ModelAndView result) {
        result.addObject("type", "quiz");
        quizPOJO quizObj = new quizPOJO();
        List<String> nowlist = quizObj.getAnswers();

        String url = request.getRequestURI();

        if (url.endsWith("2.htm")){
            quizObj.setQuestion("Which of the following can be operands of arithmetic operators?");
            nowlist.add("Numeric");
            nowlist.add("Boolean");
            nowlist.add("Characters");
            nowlist.add("Both Numeric & Characters");
            result.addObject("nextUrl", "/quiz/3.htm");
        } else if (url.endsWith("3.htm")) {
            quizObj.setQuestion("Modulus operator, %, can be applied to which of these?");
            nowlist.add("Integers");
            nowlist.add("Floating – point numbers");
            nowlist.add("Both Integers and floating – point numbers");
            nowlist.add("None of the mentioned");
            result.addObject("nextUrl", "/quiz/4.htm");
        } else if (url.endsWith("4.htm")) {
            quizObj.setQuestion(" An expression involving byte, int, and literal numbers is promoted to which of these?");
            nowlist.add("int");
            nowlist.add("long");
            nowlist.add("byte");
            nowlist.add("float");
            result.addObject("nextUrl", "/quiz/5.htm");
        } else if (url.endsWith("5.htm")) {
            quizObj.setQuestion("Which of the following is not OOPS concept in Java?");
            nowlist.add("Inheritance");
            nowlist.add("Encapsulation");
            nowlist.add("Polymorphism");
            nowlist.add("Compilation");
            result.addObject("nextUrl", "/quiz/6.htm");
        } else if (url.endsWith("6.htm")) {
            quizObj.setQuestion("When does method overloading is determined?");
            nowlist.add("At run time");
            nowlist.add("At compile time");
            nowlist.add("At coding time");
            nowlist.add("At execution time");
            result.addObject("nextUrl", "/quiz/7.htm");
        } else if (url.endsWith("7.htm")) {
            quizObj.setQuestion("What is it called if an object has its own lifecycle and there is no owner?");
            nowlist.add("Aggregation");
            nowlist.add("Composition");
            nowlist.add("Encapsulation");
            nowlist.add("Association");
            result.addObject("nextUrl", "/quiz/8.htm");
        }
        else{
            quizObj.setQuestion("Arrays in Java are implemented as?");
            nowlist.add("class");
            nowlist.add("object");
            nowlist.add("variable");
            nowlist.add("none of the mentioned");
            result.addObject("nextUrl", "/quiz/result.htm");
        }
        result.addObject("quiz", quizObj);
        return result;
    }
}
