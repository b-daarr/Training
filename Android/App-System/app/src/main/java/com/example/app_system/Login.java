package com.example.app_system;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import androidx.activity.EdgeToEdge;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

public class Login extends AppCompatActivity {

    public static final String GET_EMAIL = "GET_EMAIL";
    public static final String GET_PASSWORD = "GET_PASSWORD";
    public static final String GET_AGE = "GET_AGE";
    public static final String DATA_SEND = "DATA_SEND";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.login);
    }
    public void onClick(View view) {
        Button log_try = findViewById(R.id.log_try);
        EditText username = findViewById(R.id.user_nick);
        EditText password = findViewById(R.id.user_pass);
        EditText c_password = findViewById(R.id.user_repass);
        EditText age = findViewById(R.id.user_age);

        log_try.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (!username.getText().toString().isEmpty() && !password.getText().toString().isEmpty() && !c_password.getText().toString().isEmpty() && !age.getText().toString().isEmpty()){
                    if (password.getText().toString().equals(c_password.getText().toString())){
                        Toast.makeText(Login.this, "Welcome", Toast.LENGTH_SHORT).show();

                        String username_c = username.getText().toString();
                        String password_c = password.getText().toString();
                        String age_c = age.getText().toString();

                        Intent loginI = new Intent(Login.this, Profile.class);
                        
                        Login.this.startActivity(loginI);
                        finish();
                    }
                    else {
                        Toast.makeText(Login.this, "Confirm your password isn't the same.!", Toast.LENGTH_SHORT).show();
                    }
                }
                else {
                    Toast.makeText(Login.this, "At least one of the entries is empty.!", Toast.LENGTH_SHORT).show();
                }
            }
        });
    }
}