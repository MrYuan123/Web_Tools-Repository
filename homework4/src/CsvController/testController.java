package CsvController;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.io.StringWriter;

public class testController extends SimpleTagSupport {
    private String message;

    public void setMessage(String message) {
        this.message = message;
    }

    public void doTag() throws JspException, IOException{
        JspWriter out = getJspContext().getOut();
        out.println(this.message);
//        StringWriter sw = new StringWriter();
//        getJspBody().invoke(sw);
//        getJspContext().getOut().println(sw.toString());
    }

}
