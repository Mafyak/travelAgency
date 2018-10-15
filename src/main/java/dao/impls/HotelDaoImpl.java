package dao.impls;

import dao.interfaces.HotelDAO;
import model.Country;
import model.Features;
import model.Hotel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.sql.Array;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

@Component("hotelDaoImpl")
public class HotelDaoImpl implements HotelDAO {

    private final static String ADD_HOTEL_QUERY = "INSERT INTO public.\"Hotel\"(id, name, stars, website, lalitude," +
            " longitude, features) VALUES (DEFAULT, ?, ?, ?, ?, ?, ?)";
    private final static String GET_HOTEL_BY_ID = "SELECT id, name, stars, website, lalitude, longitude, features\n" +
            "\tFROM public.\"Hotel\" where id=?";


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
        return jdbcTemplate.queryForObject(GET_HOTEL_BY_ID, new Object[]{id}, new HotelMapper());
    }

    public void delete(int id) {

    }

    public static class HotelMapper implements RowMapper<Hotel> {
        public Hotel mapRow(ResultSet resultSet, int i) throws SQLException {
            ApplicationContext app = new ClassPathXmlApplicationContext("context.xml");
            Hotel hotel = app.getBean(Hotel.class);
            hotel.setId(resultSet.getInt("id"));
            hotel.setName(resultSet.getString("name"));
            hotel.setStars(resultSet.getInt("stars"));
            hotel.setWebsite(resultSet.getString("website"));
            hotel.setLalitude(resultSet.getDouble("lalitude"));
            hotel.setLongitude(resultSet.getDouble("longitude"));
            Array array = resultSet.getArray("features");

            String[] arrayS = (String[]) array.getArray();
            List<Features> listF = new ArrayList<Features>();
            for (String s : arrayS)
                listF.add(Features.valueOf(s));


            hotel.setFeatures(listF);
            return hotel;
        }
    }


    public void delete(String name) {

    }
}
