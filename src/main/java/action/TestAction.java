package action;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import dao.AnswerDao;
import dao.WordDao;
import model.Answer;
import model.Question;
import model.QuestionAnswer;
import model.Word;

public class TestAction extends ActionSupport {
    private List<QuestionAnswer> listQa;
    private static final long serialVersionUID = 1L;
    private int count = 0;
    private List<Question> listQuestion;

    public String execute() throws Exception {
        listQuestion = new ArrayList<Question>();
        List<Answer> listAnswer;
        List<Word> listWords;
        AnswerDao answerDao = new AnswerDao();
        WordDao wordDao = new WordDao();

        for (int i = 0; i < listQa.size(); i++) {
            QuestionAnswer qa = listQa.get(i);
            if (answerDao.getCorrectAw(qa.getWordId(), qa.getAnswerId())) {
                count++;
            }

            Question question = new Question();
            listAnswer = answerDao.getListAnswer(listQa.get(i).getWordId());
            listWords = wordDao.getWordById(listQa.get(i).getWordId());
            question.setWord(listWords.get(0));
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

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

}
