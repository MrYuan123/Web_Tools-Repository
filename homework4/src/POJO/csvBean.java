package POJO;

import java.util.ArrayList;
import java.util.List;

public class csvBean {
    private List<String> title;
    private List<List<String>> contents;

    public csvBean() {
        this.title = new ArrayList<String>();
        this.contents = new ArrayList<List<String>>();
    }

    public List<String> getTitle() {
        return title;
    }

    public void setTitle(List<String> title) {
        this.title = title;
    }

    public List<List<String>> getContents() {
        return contents;
    }

    public void setContents(List<List<String>> contents) {
        this.contents = contents;
    }
}
