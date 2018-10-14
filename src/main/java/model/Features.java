package model;

public enum Features {
    WI_FI, PET_FRIENDLY, WASHER, DRYER, FREE_BREAKFAST, GARAGE, CONDITIONING, OCEAN_VIEW;

    public static Features getFeature(int index){
        return Features.values()[index];
    }


}
