package controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/car")
public class CarController {

    @RequestMapping(value="/track")
    public String track(){
        System.out.println("go 货物跟踪");
        return "carTrack";
    }

    @RequestMapping(value="/match")
    public String dispatch(){
        System.out.println("go 车辆调度");
        return "carMatch";
    }

    @RequestMapping(value="/viewLocation")
    public String viewLocation(){
        System.out.println("go 查看地址");
        return "viewLocation";
    }


}
