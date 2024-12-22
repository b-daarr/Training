package com.example.login_form;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import androidx.activity.EdgeToEdge;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        EdgeToEdge.enable(this);
        setContentView(R.layout.activity_main);
        ViewCompat.setOnApplyWindowInsetsListener(findViewById(R.id.main), (v, insets) -> {
            Insets systemBars = insets.getInsets(WindowInsetsCompat.Type.systemBars());
            v.setPadding(systemBars.left, systemBars.top, systemBars.right, systemBars.bottom);
            return insets;
        });
    }

    public void onButtonClick(View view) {
        Button Log = findViewById(R.id.log_try);
        EditText Name = findViewById(R.id.textName);
        EditText Phone = findViewById(R.id.textPhone);
        EditText Email = findViewById(R.id.textEmail);
        EditText Password = findViewById(R.id.textPassword);
        EditText Age = findViewById(R.id.textAge);
        Log.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(MainActivity.this, "Trying Login...", Toast.LENGTH_SHORT).show();

                    Handler H = new Handler();
                    Runnable R = new Runnable() {

                        public void run() {
                            if (Name.getText().toString().equals("Jason Mike") && Phone.getText().toString().equals("9876543210") && Email.getText().toString().equals("test@mail.com") && Password.getText().toString().equals("Ab123+") && Age.getText().toString().equals("1399/02/01"))
                            {
                                // Intent I = new Intent(MainActivity.this, Calculator.class);
                                // MainActivity.this.startActivity(I);
                                Toast.makeText(MainActivity.this, "Welcome", Toast.LENGTH_SHORT).show();
                            }
                            else {
                                Toast.makeText(MainActivity.this, "A input does not exist!", Toast.LENGTH_SHORT).show();
                            }
                        }
                    };
                    H.postDelayed(R, 3000);
                }

        });
    }
}