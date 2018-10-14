package dao.impls;

import dao.interfaces.UserDAO;
import model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;


@Component("userDaoImpl")
public class UserDaoImpl implements UserDAO {

    private JdbcTemplate jdbcTemplate;

    @Autowired
    public void setDataSource(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public void addText(String message1, String message2) {
        String sql = "INSERT INTO public.test(test, test2) VALUES (?, ?);";
        if(jdbcTemplate==null)
            System.out.println("Still null");
        jdbcTemplate.update(sql, message1, message1);
    }

    public void insert(User user) {

    }

    public void get(int id) {

    }

    public void delete(User user) {

    }

    public void test() {
        System.out.println("Test method test");
    }

    public void getAllInfo() {
        String sql = "select * from test";
        jdbcTemplate.execute(sql);

    }
}
