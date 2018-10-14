package model;

import org.springframework.context.annotation.Bean;

import java.util.List;

public class Hotel {
    private int id;
    private String name;
    private int stars;
    private String website;
    private double lalitude;
    private double longitude;
    private List<Features> features;

    public Hotel() {
    }

    public Hotel getHotel() {
        return new Hotel();
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setStars(int stars) {
        this.stars = stars;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public void setLalitude(double lalitude) {
        this.lalitude = lalitude;
    }

    public void setLongitude(double longitude) {
        this.longitude = longitude;
    }

    public void setFeatures(List<Features> features) {
        this.features = features;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public int getStars() {
        return stars;
    }

    public String getWebsite() {
        return website;
    }

    public double getLalitude() {
        return lalitude;
    }

    public double getLongitude() {
        return longitude;
    }

    public List<Features> getFeatures() {
        return features;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Hotel hotel = (Hotel) o;

        if (id != hotel.id) return false;
        if (stars != hotel.stars) return false;
        if (Double.compare(hotel.lalitude, lalitude) != 0) return false;
        if (Double.compare(hotel.longitude, longitude) != 0) return false;
        if (name != null ? !name.equals(hotel.name) : hotel.name != null) return false;
        if (website != null ? !website.equals(hotel.website) : hotel.website != null) return false;
        return features != null ? features.equals(hotel.features) : hotel.features == null;
    }

    @Override
    public int hashCode() {
        int result;
        long temp;
        result = id;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + stars;
        result = 31 * result + (website != null ? website.hashCode() : 0);
        temp = Double.doubleToLongBits(lalitude);
        result = 31 * result + (int) (temp ^ (temp >>> 32));
        temp = Double.doubleToLongBits(longitude);
        result = 31 * result + (int) (temp ^ (temp >>> 32));
        result = 31 * result + (features != null ? features.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "Hotel{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", stars=" + stars +
                ", website='" + website + '\'' +
                ", lalitude=" + lalitude +
                ", longitude=" + longitude +
                ", features=" + features +
                '}';
    }
}
