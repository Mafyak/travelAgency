package dao.interfaces;
import model.Hotel;

public interface HotelDAO {

    void addHotel(Hotel hotel);
    Hotel getHotel(int id);
    void delete(int id);
    void delete(String name);
}
