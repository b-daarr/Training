package com.example.app_system;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;

import androidx.appcompat.app.AppCompatActivity;

import static com.example.app_system.Login.DATA_SEND;

public class Profile extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.profile);

        Intent dataIntent = getIntent();
        DataTransfer dataTransfer = dataIntent.getParcelableExtra(DATA_SEND);

        if (dataIntent != null){
            Log.e("TAG", "GET_NAME  " + DataTransfer.class.getName());
//            Log.e("TAG", "GET_PASSWORD  " + DataTransfer.class.getPassword());
//            Log.e("TAG", "GET_AGE  " + DataTransfer.class.getAge());
        }
    }
}