package com.example.app_system;

import android.os.Parcel;
import android.os.Parcelable;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public abstract class DataTransfer implements Parcelable {
    private String email, password, age;

    protected DataTransfer(Parcel in){
        email = in.readString();
        password = in.readString();
        age = in.readString();
    }

    public DataTransfer(String email, String password, String age){
        this.email = email;
        this.password = password;
        this.age = age;
    }

    public static final Creator<DataTransfer> CREATOR = new Creator<DataTransfer>() {
        @Override
        public DataTransfer createFromParcel(Parcel in) {
            return new DataTransfer(in) {
                @Override
                public int describeContents() {
                    return 0;
                }
            };
        }

        @Override
        public DataTransfer[] newArray(int size) {
            return new DataTransfer[size];
        }
    };

    @NonNull
    @Override
    public String toString(){
        return "DataTransfer{" +
                "email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", age='" + age + '\'' +
                '}';
    }

    public String getEmail(){
        return email;
    }

    public String getPassword(){
        return password;
    }

    public String getAge(){
        return age;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i){
        parcel.writeString(email);
        parcel.writeString(password);
        parcel.writeString(age);
    }
}