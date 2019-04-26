package controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

    @RequestMapping(value="/index")
    public String handleRequest(){
        System.out.println("go index");
        return "index";
    }

    @RequestMapping(value="/loginIndex")
    public String loginIndex(){
        System.out.println("go loginIndex");
        return "loginIndex";
    }
}
