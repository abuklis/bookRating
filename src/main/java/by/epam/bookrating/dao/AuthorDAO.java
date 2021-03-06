package by.epam.bookrating.dao;


import by.epam.bookrating.entity.Author;

import java.util.ArrayList;

/**
 * Created by anyab on 09.02.2017.
 */
public interface AuthorDAO {
    void addAuthor(String fullName, int birthYear, String birthCountry, String biography, String imageUrl)
            throws DAOException;

    long addBasicAuthorInfo(String fullName) throws DAOException;

    Author findAuthorById(long authorId) throws DAOException;

    Author isAuthorExists(String fullName) throws DAOException;

    void updateAuthorInfo(String fullName, int birthYear, String birthCountry,
                          String biography, String imageUrl, int authorId) throws DAOException;

    ArrayList<Author> findAuthorsByBookId(long bookId) throws DAOException;
}
