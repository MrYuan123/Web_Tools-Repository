package DAOs;

import POJOs.MovieEntity;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

import javax.persistence.Query;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class movieDAO {
    private SessionFactory sessionFactory;
    private static Session session;

    protected SessionFactory setUp() throws Exception {
                //return createMethod();
        return createMethodNew();
    }

    public SessionFactory createMethod() throws Exception{
        System.out.println("Create sessionFactory");
        Configuration configuration = new Configuration();
        configuration.configure("hibernate.cfg.xml");
        try {
            sessionFactory = configuration.buildSessionFactory();

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

        return sessionFactory;
    }

    public SessionFactory createMethodNew() throws Exception{
        System.out.println("Another way to create sessionFactory");
        try {
            StandardServiceRegistry standardRegistry = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
            Metadata metaData = new MetadataSources(standardRegistry).getMetadataBuilder().build();
            sessionFactory = metaData.getSessionFactoryBuilder().build();
        } catch (Throwable th) {
            System.err.println("Enitial SessionFactory creation failed" + th);
            throw new ExceptionInInitializerError(th);
        }
        return sessionFactory;
    }

    public Session getSession() throws Exception {
        if(session == null) {
            session = setUp().openSession();
        }
        return session;
    }

    private void beginTransaction() throws Exception {
        getSession().beginTransaction();
    }

    private void commit() throws Exception {
        getSession().getTransaction().commit();
    }

    private void close() throws Exception {
        getSession().close();
    }

    private void rollbackTransaction() throws Exception {
        getSession().getTransaction().rollback();
    }

    public boolean addMovie(MovieEntity movie){
        boolean result = false;
        try{
            beginTransaction();
            Session session = getSession();
            session.clear();
            session.save(movie);
            commit();
            result = true;
        }catch (HibernateException e) {
            e.printStackTrace();
            try {
                rollbackTransaction();
            } catch (Exception ex) {
                Logger.getLogger(String.valueOf(movie.getId())).log(Level.SEVERE, null, ex);
            }
        } catch (Exception ex) {
            Logger.getLogger(String.valueOf(movie.getId())).log(Level.SEVERE, null, ex);
        } finally{
            try {
                //close();
            } catch (Exception ex) {
                Logger.getLogger(String.valueOf(movie.getId())).log(Level.SEVERE, null, ex);
            }
        }
        return result;
    }

    public List<MovieEntity> searchMovie(String content, String type){
        List<MovieEntity> movies = new ArrayList<MovieEntity>();
        try{
            beginTransaction();
            Session session = getSession();
            Query q;
            if(type.equals("title")){
                if(content.equals("all")){
                    q = session.createQuery("from MovieEntity" );
                }else{
                    q = session.createQuery("from MovieEntity where title=:title" );
                    ((org.hibernate.query.Query) q).setString("title", content);
                }
            }
            else if(type.equals("actor")){
                q = session.createQuery("from MovieEntity where actor=:actor");
                ((org.hibernate.query.Query) q).setString("actor", content);
            }
            else{
                q = session.createQuery("from MovieEntity where actress=:actress");
                ((org.hibernate.query.Query) q).setString("actress", content);
            }
            movies = ((org.hibernate.query.Query) q).list();
            System.out.println(q.toString());
            commit();
        } catch(HibernateException e){
            e.printStackTrace();
            try {
                rollbackTransaction();
            } catch (Exception ex) {
                Logger.getLogger(movieDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (Exception ex) {
            Logger.getLogger(movieDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally{
            try {
                //close();
            } catch (Exception ex) {
                Logger.getLogger(movieDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return movies;
    }
}
