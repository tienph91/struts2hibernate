package action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import dao.AnswerDao;
import model.QuestionAnswer;

public class TestAction extends ActionSupport{
	private List<QuestionAnswer> listQa;
	private static final long serialVersionUID = 1L;
	private int count=0;
	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	AnswerDao answerDao=new AnswerDao();
	
	
	 public String execute() throws Exception {
		 for(QuestionAnswer qa : listQa) {
			 if(answerDao.getCorrectAw(qa.getWordId(), qa.getAnswerId())) {
				 count++;
			 }
		 }
	        

	        return SUCCESS;
	    }

	public List<QuestionAnswer> getListQa() {
		return listQa;
	}

	public void setListQa(List<QuestionAnswer> listQa) {
		this.listQa = listQa;
	}

	 
}
