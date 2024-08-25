package com.myGroup.myFirstWebApp.todo;

import org.springframework.stereotype.Service;

import java.security.InvalidParameterException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;
import java.util.stream.Collectors;

@Service
public class TodoService {
    private final static ArrayList<Todo> todoList = new ArrayList<>();

    static {
        todoList.add(new Todo(1, "givi", "Learn Java", LocalDate.of(2024, 10, 10)));
        todoList.add(new Todo(2, "givi", "Learn Spring", LocalDate.of(2024, 11, 5)));
        todoList.add(new Todo(3, "gio", "Learn C", LocalDate.of(2024, 12, 2)));
    }

    public ArrayList<Todo> findByUserName(String userName) throws InvalidParameterException {
        ArrayList<Todo> todosForUser = todoList.stream().filter(todo -> todo.getUserName().equals(userName))
                .collect(Collectors.toCollection(ArrayList::new));

        if (todosForUser.isEmpty()) {
            throw new InvalidParameterException("No todo list found for that mf");
        }

        return todosForUser;
    }

    public void addTodo(
            String userName,
            String description,
            LocalDate dueDate
    ) {
        Todo newTodo = new Todo(
                ThreadLocalRandom.current().nextLong(1000),
                userName,
                description,
                dueDate
        );

        todoList.add(newTodo);
    }
}
