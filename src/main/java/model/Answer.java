package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ANSWER")
public class Answer {

	@Id
    @GeneratedValue
    @Column(name = "id")
	private int id;
	
	@Column(name = "answer")
	private String answer;
	
	@Column(name = "wordId")
	private int wordId;
	
	@Column(name = "correctAnswer")
	private boolean correctAnswer;
	
	public Answer() {
		super();
	}

	public Answer(int id, String answer, int wordId, boolean correctAnswer) {
		super();
		this.id = id;
		this.answer = answer;
		this.wordId = wordId;
		this.correctAnswer = correctAnswer;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public int getWordId() {
		return wordId;
	}

	public void setWordId(int wordId) {
		this.wordId = wordId;
	}

	public boolean isCorrectAnswer() {
		return correctAnswer;
	}

	public void setCorrectAnswer(boolean correctAnswer) {
		this.correctAnswer = correctAnswer;
	}
	
	
}
