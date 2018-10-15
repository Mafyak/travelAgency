package test;

import dao.impls.CountryDaoImpl;
import dao.impls.HotelDaoImpl;
import dao.impls.UserDaoImpl;
import model.Country;
import model.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Runner {

    public static void main(String[] args) {
        Logger LOG = LoggerFactory.getLogger(Runner.class);
        ApplicationContext app = new ClassPathXmlApplicationContext("context.xml");
//        UserDaoImpl userDao = app.getBean(UserDaoImpl.class);
//        userDao.get(1);
//        User user = app.getBean(User.class);
//        user.setLogin("settedLogin");
//        userDao.addText("ideaInsert", "ideaInsert2");
//        LOG.info("User: " + user);
        HotelDaoImpl hotelDaoImpl = app.getBean(HotelDaoImpl.class);
//        countryDaoImpl.addCountry("Armenia");
        System.out.println(hotelDaoImpl.getHotel(1));
    }
}
