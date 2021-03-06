package by.epam.bookrating.dao;

import by.epam.bookrating.entity.Comment;
import by.epam.bookrating.entity.User;

import java.sql.Date;
import java.util.List;
import java.util.Map;

/**
 * Created by anyab on 09.02.2017.
 */
public interface CommentDAO {
    void createComment(long bookId, long userId, Date commentDate, String commentText)
            throws DAOException;

    Map<User, Comment> findAllCommentsByBookId(long bookId) throws DAOException;

    void deleteComment(long commentId) throws DAOException;

    List<Comment> findTodayComments(Date currentDate) throws DAOException;

    List<Comment> findCommentsByUserId(long userId) throws DAOException;
}
