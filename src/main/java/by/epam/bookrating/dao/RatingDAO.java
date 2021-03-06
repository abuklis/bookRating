package by.epam.bookrating.dao;

import by.epam.bookrating.entity.Rating;


/**
 * Created by anyab on 09.02.2017.
 */
public interface RatingDAO {
    void addRating(long userId, long bookId, int rating) throws DAOException;

    boolean isRatingByThisUserExists(long userId, long bookId) throws DAOException;

    Rating findRatingByLoginAndBookId(long bookId, long userId) throws DAOException;

    double findAvgRatingByBookId(long bookId) throws DAOException;
}
