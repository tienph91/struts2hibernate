package dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import listener.HibernateListener;
import model.Answer;

public class AnswerDao {
    SessionFactory factory = (SessionFactory) ServletActionContext.getServletContext()
            .getAttribute(HibernateListener.KEY_NAME);
    Session session = null;

    @SuppressWarnings("unchecked")
    public List<Answer> getListAnswer(int id) {
        List<Answer> listAnswers = null;
        session = factory.openSession();
        session.beginTransaction();
        listAnswers = session.createQuery("from Answer A where A.wordId =:id ").setParameter("id", id).list();
        session.getTransaction().commit();
        session.close();
        return listAnswers == null ? new ArrayList<Answer>() : (List<Answer>) listAnswers;
    }

    @SuppressWarnings("unchecked")
    public boolean getCorrectAw(int wordId, int answerId) {
        List<Answer> listAnswers = null;
        session = factory.openSession();
        session.beginTransaction();
        listAnswers = session
                .createQuery("from Answer A where A.wordId =:wordId AND A.id=:answerId AND A.correctAnswer = 1 ")
                .setParameter("wordId", wordId).setParameter("answerId", answerId).list();
        session.getTransaction().commit();
        session.close();
        if (listAnswers != null && !listAnswers.isEmpty())
            return true;

        return false;

    }
}
