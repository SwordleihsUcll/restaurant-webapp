package main.controller;

import main.model.WeekMenu;
import main.service.MealService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class WeekMenuController {
    @Autowired
    private MealService weekMenuService;

    @GetMapping("/weekmenu")
    public List<WeekMenu> getWeekMenus(){
        return weekMenuService.getWeekMenus();
    }

    @GetMapping("/weekmenu/{id}")
    public WeekMenu getWeekMenuById(@PathVariable int id){
        return this.weekMenuService.getWeekMenuById(id).orElseThrow(IllegalArgumentException::new);
    }
}