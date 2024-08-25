package com.myGroup.myFirstWebApp.todo;

import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;


import java.util.ArrayList;
import java.util.concurrent.ThreadLocalRandom;

@Controller
@SessionAttributes({"username", "newTodo"})
public class TodoController {
    private final TodoService todoService;

    public TodoController(TodoService todoService) {
        this.todoService = todoService;
    }

    @RequestMapping(value = "todos-list", method = RequestMethod.GET)
    public String todoPage(@ModelAttribute("username") String username, ModelMap model) {
        ArrayList<Todo> todos = todoService.findByUserName(username);
        model.put("todos", todos);
        return "todos";
    }

    @RequestMapping(value = "create-todo", method = RequestMethod.GET)
    public String createTodoPage(@ModelAttribute("username") String username, ModelMap model) {
        model.put("newTodo", todoFormBackingObject(username));
        return "create-todo";
    }

    @RequestMapping(value = "create-todo", method = RequestMethod.POST)
    public String addNewTodo(
            @ModelAttribute("newTodo")
            @Valid Todo todo,
            BindingResult bindingResult
    ) {
        if (bindingResult.hasErrors()) return "create-todo";

        todoService.addTodo(todo.getUserName(), todo.getDescription(), todo.getDueDate());
        return "redirect:todos-list";
    }

    private Todo todoFormBackingObject(String username) {
        long randomId = ThreadLocalRandom.current().nextLong(0, 1000);
        return new Todo(randomId, username);
    }
}
