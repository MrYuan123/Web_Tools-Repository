package POJOs;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class quizPOJO {
    String question;
    List<String> answers;

    public quizPOJO() {
        this.answers = new ArrayList<String>();
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public List<String> getAnswers() {
        return answers;
    }

    public void setAnswers(List<String> answers) {
        this.answers = answers;
    }
}
