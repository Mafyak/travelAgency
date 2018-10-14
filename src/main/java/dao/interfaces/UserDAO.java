package dao.interfaces;

import model.User;

public interface UserDAO {

    void addText(String message1, String message2);
    void insert(User user);
    void get(int id);
    void delete(User user);
    void test();
    void getAllInfo();

}
