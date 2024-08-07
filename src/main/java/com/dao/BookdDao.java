package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.configuration.HibernateConfiguration;
import com.entity.Book;

public class BookdDao {

	public static boolean save(Book book) {
		Transaction trans = null;
		Session session = HibernateConfiguration.getSessionFactory().openSession();
		trans = session.beginTransaction();
		session.save(book);
		trans.commit();
		session.close();

		return false;

	}

	public static List<Book> getBooks() {
		List<Book> books = null;
		Session session = HibernateConfiguration.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
        books = session.createQuery("from Book", Book.class).list();
        transaction.commit();
		return books;

	}
	
	public static boolean update(Book book){
		Transaction trans = null;
		Session session = HibernateConfiguration.getSessionFactory().openSession();
		trans = session.beginTransaction();
		session.update(book);
		trans.commit();
		session.close();
		return false;
		
	}
	
	public boolean deleteBookById(int bookId) {
	    SessionFactory sessionFactory = HibernateConfiguration.getSessionFactory();
	    Session session = sessionFactory.openSession();
	    Transaction transaction = session.beginTransaction();

	    try {
	        // Create a query to delete the book
	        String hql = "DELETE FROM Book WHERE bid = :bookId";
	        Query query = session.createQuery(hql);
	        query.setParameter("bookId", bookId);

	        // Execute the query
	        int result = query.executeUpdate();
	        transaction.commit();

	        // Check if any rows were affected
	        return result > 0; // Return true if the delete was successful
	    } catch (Exception e) {
	        if (transaction != null) {
	            // Rollback the transaction in case of an exception
	            transaction.rollback();
	        }
	        e.printStackTrace();
	        return false; // Return false if there was an error
	    } finally {
	        if (session != null) {
	            // Ensure the session is closed
	            session.close();
	        }
	    }
	}
}