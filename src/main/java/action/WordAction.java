package action;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import dao.AnswerDao;
import dao.WordDao;
import model.Answer;
import model.Question;
import model.QuestionAnswer;
import model.Word;

public class WordAction extends ActionSupport {

    /**
     * 
     */
    private static final long serialVersionUID = 1L;

    private List<Question> listQuestion;
    private List<QuestionAnswer> listQa;

    public String execute() throws Exception {
        listQuestion = new ArrayList<Question>();
        listQa = new ArrayList<QuestionAnswer>();
        List<Word> listWords;
        List<Answer> listAnswer;
        int numOfQuestion = 10;
        AnswerDao answerDao = new AnswerDao();

        listWords = new WordDao().getListWord();
        Collections.shuffle(listWords);
        if (listWords.size() < 10) {
            numOfQuestion = listWords.size();
        }
        for (int i = 0; i < numOfQuestion; i++) {
            Question question = new Question();
            listAnswer = answerDao.getListAnswer(listWords.get(i).getId());
            question.setWord(listWords.get(i));
            question.setListAnswer(listAnswer);
            listQuestion.add(question);
        }

        return SUCCESS;
    }

    public List<QuestionAnswer> getListQa() {
        return listQa;
    }

    public void setListQa(List<QuestionAnswer> listQa) {
        this.listQa = listQa;
    }

    public List<Question> getListQuestion() {
        return listQuestion;
    }

    public void setListQuestion(List<Question> listQuestion) {
        this.listQuestion = listQuestion;
    }

}
