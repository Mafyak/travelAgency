package dao.interfaces;

import model.Country;

public interface CountryDAO {

    void addCountry(String country);
    Country getCountry(int id);

}
