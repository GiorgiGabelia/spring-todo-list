package com.myGroup.myFirstWebApp.todo;

import com.myGroup.myFirstWebApp.login.WelcomeController;
import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;


import java.util.ArrayList;
import java.util.Optional;
import java.util.concurrent.ThreadLocalRandom;

@Controller
@SessionAttributes({"username", "todo"})
public class TodoController {
    private final TodoService todoService;

    public TodoController(TodoService todoService) {
        this.todoService = todoService;
    }

    @RequestMapping(value = "todos-list", method = RequestMethod.GET)
    public String todoPage(ModelMap model) {
        if (model.get("username") == null) model.put("username", WelcomeController.getLoggedInUsername());

        ArrayList<Todo> todos = todoService.findByUserName(WelcomeController.getLoggedInUsername());
        model.put("todos", todos);
        return "todos";
    }

    @RequestMapping(value = "create-todo", method = RequestMethod.GET)
    public String createTodoPage(@ModelAttribute("username") String username, ModelMap model) {
        model.put("todo", new Todo(randomId(), username));
        return "create-todo";
    }

    @RequestMapping(value = "create-todo", method = RequestMethod.POST)
    public String addNewTodo(
            @ModelAttribute("todo")
            @Valid Todo todo,
            BindingResult bindingResult
    ) {
        if (bindingResult.hasErrors()) return "create-todo";
        todoService.addTodo(todo.getUserName(), todo.getDescription(), todo.getDueDate());
        return "redirect:/todos-list";
    }

    @RequestMapping(value = "update-todo/{id}", method = RequestMethod.GET)
    public String updateTodoPage(@PathVariable String id,
                                 @ModelAttribute String username,
                                 ModelMap model) {
        Optional<Todo> todo = todoService.findById(Long.parseLong(id));
        if (todo.isPresent()) {
            model.put("todo", todo);
            return "update-todo";
        }
        return "redirect:/todos-list";
    }

    @RequestMapping(value = "update-todo/{id}", method = RequestMethod.POST)
    public String updateTodo(
            @ModelAttribute
            @Valid Todo todo,
            BindingResult bindingResult) {
        if (bindingResult.hasErrors()) return "update-todo";

        // Somehow the todo is directly updated without calling the service; This probably happens because object is binded to view;
        return "redirect:/todos-list";
    }

    @RequestMapping(value = "delete-todo/{id}", method = RequestMethod.GET)
    public String deleteTodo(@PathVariable String id) {
        todoService.deleteById(id);
        return "redirect:/todos-list";
    }

    private long randomId() {
        return ThreadLocalRandom.current().nextLong(0, 1000);
    }
}
