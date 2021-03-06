package by.epam.bookrating.command.impl.user;
import by.epam.bookrating.command.Command;
import by.epam.bookrating.command.PageConstant;
import by.epam.bookrating.command.ParameterConstant;
import by.epam.bookrating.command.CommandException;
import by.epam.bookrating.service.ServiceException;
import by.epam.bookrating.service.UserService;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by anyab on 06.11.16.
 */
public class ViewFavoriteBooksCommand implements Command {
    private static ViewFavoriteBooksCommand instance = new ViewFavoriteBooksCommand();
    public static ViewFavoriteBooksCommand getInstance() {
        return instance;
    }
    private ViewFavoriteBooksCommand() {
    }

    @Override
    public String execute(HttpServletRequest request) throws CommandException {
        if (isUser(request)){
            long userId = Long.parseLong(request.getParameter(ParameterConstant.USER_ID));
            try {
                request.setAttribute(ParameterConstant.BOOK_LIST,
                        UserService.getInstance().findFavoriteBooks(userId));
                request.setAttribute(ParameterConstant.USER_ID, userId);
            } catch (ServiceException e) {
                throw new CommandException("Exception", e);
            }
            return PageConstant.FAVORITE_BOOKS;
        } else {
            return PageConstant.LOGIN_PAGE;
        }

    }
}
