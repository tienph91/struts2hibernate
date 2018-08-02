package dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import listener.HibernateListener;
import model.Word;

public class WordDao {
    SessionFactory factory = (SessionFactory) ServletActionContext.getServletContext()
            .getAttribute(HibernateListener.KEY_NAME);
    Session session = null;

    @SuppressWarnings("unchecked")
    public List<Word> getListWord() {
        List<Word> listWords = null;

        session = factory.openSession();
        session.beginTransaction();

        listWords = session.createQuery("from Word").list();

        session.getTransaction().commit();
        return listWords == null ? new ArrayList<Word>() : listWords;
    }
}
