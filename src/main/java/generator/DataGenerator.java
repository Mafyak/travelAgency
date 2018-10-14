package generator;

import dao.impls.CountryDaoImpl;
import dao.impls.HotelDaoImpl;
import dao.interfaces.HotelDAO;
import model.Features;
import model.Hotel;
import org.fluttercode.datafactory.impl.DataFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.*;

public class DataGenerator {

    ApplicationContext app = new ClassPathXmlApplicationContext("context.xml");
    DataFactory df = new DataFactory();

    public static void main(String[] args) {
//        for (int i = 0; i < 100; i++) {
//            String name = df.getCity();
//            System.out.println(name);
//        }
        DataGenerator dg = new DataGenerator();
        dg.generateHotels();

    }

    public void generateHotels() {
        HotelDaoImpl hotelDao = app.getBean(HotelDaoImpl.class);
        Hotel hotel = app.getBean(Hotel.class);
        hotel.setName(df.getBusinessName());
        hotel.setStars(df.getNumberBetween(1, 5));
        hotel.setWebsite(df.getEmailAddress());
        hotel.setLalitude(df.getNumberBetween(1, 10000) / 100.00);
        hotel.setLongitude(df.getNumberBetween(1, 10000) / 100.00);
        Set<Features> set = new HashSet();
        int repeats = df.getNumberBetween(0, 8);
        for (int i = 0; i < repeats; i++) {
            set.add(Features.getFeature(df.getNumberBetween(0, 7)));
        }
        List<Features> list = new ArrayList<Features>();
        list.addAll(set);
        hotel.setFeatures(list);
        System.out.println(list);
        System.out.println(hotel);
    }

    public void generateCountries() {
        CountryDaoImpl countryDaoImpl = app.getBean(CountryDaoImpl.class);
        String[] locales = Locale.getISOCountries();
        ArrayList<String> list = new ArrayList<String>();
        String countryName = "";
        for (String countryCode : locales) {
            try {
                countryName = new Locale("", countryCode).getDisplayCountry();
                countryDaoImpl.addCountry(countryName);
            } catch (Exception e) {
                System.out.println("Can't add: " + countryName);
            }
        }
    }


}
