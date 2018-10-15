package database;

import dao.impls.CountryDaoImpl;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TablesSizeTest {

    private CountryDaoImpl countryDao;

    @Before
    public void setupTester() {
        ApplicationContext app = new ClassPathXmlApplicationContext("context.xml");
        countryDao = app.getBean(CountryDaoImpl.class);
    }

    @Test
    public void testCountrySize() {
        Assert.assertTrue(countryDao.countEntries() > 25);
    }
}
