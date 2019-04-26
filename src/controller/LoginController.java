package controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/login")
public class LoginController {

    @RequestMapping(value="/index")
    public String login(){
        System.out.println("go login");
        return "login";
    }

    @RequestMapping(value="/error")
    public String error(){
        System.out.println("go error");
        return "error";
    }


}
