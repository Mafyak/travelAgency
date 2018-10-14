package dao.impls;

import dao.interfaces.CountryDAO;
import model.Country;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;

@Component("countryDaoImpl")
public class CountryDaoImpl implements CountryDAO {

    private final static String ADD_COUNTRY_QUERY = "INSERT INTO \"Country\" VALUES (DEFAULT, ?)";
    private final static String GET_COUNTRY_QUERY = "SELECT id, name FROM public.\"Country\" where id=?";
    private JdbcTemplate jdbcTemplate;

    @Autowired
    public void setJdbcTemplate(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public void addCountry(String country) {
        jdbcTemplate.update(ADD_COUNTRY_QUERY, country);
    }

    public Country getCountry(int id) {
        return jdbcTemplate.queryForObject(GET_COUNTRY_QUERY, new Object[]{id}, new CountryMapper());
    }

    public static class CountryMapper implements RowMapper<Country> {

        public Country mapRow(ResultSet resultSet, int i) throws SQLException {
            Country country = new Country();
            country.setId(resultSet.getInt("id"));
            country.setName(resultSet.getString("name"));
            return country;
        }
    }
}
