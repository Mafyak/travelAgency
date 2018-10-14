package dao.impls;

import dao.interfaces.HotelDAO;
import model.Features;
import model.Hotel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.util.List;

@Component("hotelDaoImpl")
public class HotelDaoImpl implements HotelDAO {

    private final static String ADD_HOTEL_QUERY = "INSERT INTO public.\"Hotel\"(id, name, stars, website, lalitude," +
            " longitude, features) VALUES (DEFAULT, ?, ?, ?, ?, ?, ?)";


    private JdbcTemplate jdbcTemplate;

    @Autowired
    public void setJdbcTemplate(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public void addHotel(Hotel hotel) {
        jdbcTemplate.update(ADD_HOTEL_QUERY, hotel.getName(), hotel.getStars(), hotel.getWebsite(),
                hotel.getLalitude(), hotel.getLongitude(), hotel.getFeatures());
    }

    public Hotel getHotel(int id) {
        return null;
    }

    public void delete(int id) {

    }

    public void delete(String name) {

    }
}
