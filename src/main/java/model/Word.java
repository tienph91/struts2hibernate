package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "WORD")
public class Word {

    @Id
    @GeneratedValue
    @Column(name = "id")
    private int id;

    @Column(unique = true,name="word")
    private String word;

    private String type;

    private String pronounce;

    private String meaning;

    @Column(name = "meaning_in_english")
    private String meaningInEnglish;

    private String etc;

    public Word() {
        super();
    }

    public Word(int id, String word, String type, String pronounce, String meaning, String meaningInEnglish,
            String etc) {
        super();
        this.id = id;
        this.word = word;
        this.type = type;
        this.pronounce = pronounce;
        this.meaning = meaning;
        this.meaningInEnglish = meaningInEnglish;
        this.etc = etc;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getWord() {
        return word;
    }

    public void setWord(String word) {
        this.word = word;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getPronounce() {
        return pronounce;
    }

    public void setPronounce(String pronounce) {
        this.pronounce = pronounce;
    }

    public String getMeaning() {
        return meaning;
    }

    public void setMeaning(String meaning) {
        this.meaning = meaning;
    }

    public String getMeaningInEnglish() {
        return meaningInEnglish;
    }

    public void setMeaningInEnglish(String meaningInEnglish) {
        this.meaningInEnglish = meaningInEnglish;
    }

    public String getEtc() {
        return etc;
    }

    public void setEtc(String etc) {
        this.etc = etc;
    }

}
