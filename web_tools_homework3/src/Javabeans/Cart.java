package Javabeans;

import java.util.ArrayList;
import java.util.List;

public class Cart {
    private List<String> book;
    private List<String> music;
    private List<String> laptop;

    public Cart() {
        book = new ArrayList<String>();
        music = new ArrayList<String>();
        laptop = new ArrayList<String>();
    }

    public List<String> getBook() {
        return book;
    }

    public void setBook(List<String> book) {
        this.book = book;
    }

    public List<String> getMusic() {
        return music;
    }

    public void setMusic(List<String> music) {
        this.music = music;
    }

    public List<String> getLaptop() {
        return laptop;
    }

    public void setLaptop(List<String> laptop) {
        this.laptop = laptop;
    }


}
