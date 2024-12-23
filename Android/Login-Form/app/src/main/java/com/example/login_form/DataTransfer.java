package com.example.login_form;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import org.jetbrains.annotations.NotNull;

import java.util.List;

public abstract class DataTransfer extends RecyclerView.Adapter<DataTransfer.ViewHolder> {
    private List<String> dataList;
    private Context context;

    public DataTransfer(List<String> dataList, Context context) {
        this.dataList = dataList;
        this.context = context;
    }

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.transfer_data, parent, false);
        return new ViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull ViewHolder holder, int position) {
        holder.textItem.setText(dataList.get(position));

        holder.log_try.setOnClickListener(v -> {
            String inputText = holder.textItem.getText().toString();
            //
        });
    }

    @Override
    public int getItemCount() {
        return dataList.size();
    }

    public static class ViewHolder extends RecyclerView.ViewHolder {
        EditText textItem;
        Button log_try;

        public ViewHolder(@NonNull @NotNull View itemView) {
            super(itemView);
            textItem = itemView.findViewById(R.id.textItem);
            log_try = itemView.findViewById(R.id.log_try);
        }
    }
}