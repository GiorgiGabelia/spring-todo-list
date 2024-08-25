package com.myGroup.myFirstWebApp.todo;

import jakarta.validation.constraints.Future;
import jakarta.validation.constraints.Size;

import java.time.LocalDate;

// This is a form backing object
public class Todo {
    private final String DESCRIPTION_ERROR_MESSAGE = "Description must be between 3-100 characters.";
    private final String DUE_DATE_ERROR_MESSAGE = "Due date must be in future.";

    @Size(min = 3, max = 100, message = DESCRIPTION_ERROR_MESSAGE)
    private String description;

    @Future(message = DUE_DATE_ERROR_MESSAGE)
    private LocalDate dueDate;

    private final String userName;
    private final long id;
    private final boolean completed = false;

    public Todo(long id, String userName) {
        this.id = id;
        this.userName = userName;
    }

    public Todo(long id, String userName, String description, LocalDate dueDate) {
        this.id = id;
        this.userName = userName;
        this.description = description;
        this.dueDate = dueDate;
    }

    public long getId() {
        return id;
    }

    public String getUserName() {
        return userName;
    }

    public String getDescription() {
        return description;
    }

    public boolean isCompleted() {
        return completed;
    }

    public LocalDate getDueDate() {
        return dueDate;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setDueDate(LocalDate dueDate) {
        this.dueDate = dueDate;
    }

    @Override
    public String toString() {
        return "Todo{" +
                "id=" + id +
                ", description='" + description + '\'' +
                ", completed=" + completed +
                ", dueDate=" + dueDate +
                ", userName='" + userName + '\'' +
                '}';
    }
}
