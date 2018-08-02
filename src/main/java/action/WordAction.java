package action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import dao.WordDao;
import model.Word;

public class WordAction extends ActionSupport {

    /**
     * 
     */
    private static final long serialVersionUID = 1L;

    private List<Word> listWords;

    public String execute() throws Exception {

        listWords = new WordDao().getListWord();

        return SUCCESS;
    }

    public List<Word> getListWords() {
        return listWords;
    }

    public void setListWords(List<Word> listWords) {
        this.listWords = listWords;
    }

}
