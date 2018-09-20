package model;

import java.util.List;

public class Question {
    private Word word;
    private List<Answer> listAnswer;

    public Question() {

    }

    public Question(Word word, List<Answer> listAnswer) {
        super();
        this.word = word;
        this.listAnswer = listAnswer;
    }

    public Word getWord() {
        return word;
    }

    public void setWord(Word word) {
        this.word = word;
    }

    public List<Answer> getListAnswer() {
        return listAnswer;
    }

    public void setListAnswer(List<Answer> listAnswer) {
        this.listAnswer = listAnswer;
    }

}
