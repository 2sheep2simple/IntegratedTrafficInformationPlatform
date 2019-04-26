package controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/order")
public class OrderController {


    @RequestMapping(value="/analysis")
    public String analysis(){
        System.out.println("go orderAnalysis");
        return "orderAnalysis";
    }


    @RequestMapping(value="/handle")
    public String handle(){
        System.out.println("go orderHandle");
        return "orderHandle";
    }

}
