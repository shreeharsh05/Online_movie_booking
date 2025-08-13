import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import jakarta.servlet.*;

import java.io.IOException;

@WebServlet("/BookingServlet")
public class BookingServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String movie = req.getParameter("movie");
        String time = req.getParameter("time");
        String seats = req.getParameter("seats");

        // Optional validation
        if (movie == null || time == null || seats == null) {
            req.setAttribute("error", "Invalid booking data");
            req.getRequestDispatcher("bookmovie.jsp").forward(req, res);
            return;
        }

        req.setAttribute("movie", movie);
        req.setAttribute("time", time);
        req.setAttribute("seats", seats);

        RequestDispatcher rd = req.getRequestDispatcher("bookingStatus.jsp");
        rd.forward(req, res);
    }
}