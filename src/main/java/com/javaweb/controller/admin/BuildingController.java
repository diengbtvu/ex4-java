package com.javaweb.controller.admin;



import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.request.BuildingSearchRequest;
import com.javaweb.model.response.BuildingSearchResponse;
import com.javaweb.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller(value="buildingControllerOfAdmin")
public class BuildingController {

    @Autowired
    private IUserService userService;
    @GetMapping(value = "/admin/building-list")
    public ModelAndView buildingList(@ModelAttribute BuildingSearchRequest buildingSearchRequest, HttpServletRequest request){

            ModelAndView mav = new ModelAndView("admin/building/list");
            mav.addObject("modelListForm", buildingSearchRequest);

            // Khuc nay xuong tang Service lay db ra
            // du lieu mau nhe
        List<BuildingSearchResponse> buildingSearchResponseList = new ArrayList<>();
        BuildingSearchResponse it1 = new BuildingSearchResponse();
        //set tat ca filed data cho it1
        it1.setId(1L);
        it1.setCreatedDate("2020-01-01");
        it1.setName("Building 1");
        it1.setAddress("Address 1");
        it1.setNumberOfBasement(2L);
        it1.setManagerName("Manager 1");
        it1.setManagerPhoneNumber("0123456789");
        it1.setFloorArea(100L);
        it1.setEmptyArea("Empty Area 1");
        it1.setRentArea("Rent Area 1");
        it1.setRentPrice(1000L);
        it1.setServiceFee("Service Fee 1");
        it1.setBrokerageFee(0.1);
        BuildingSearchResponse it2 = new BuildingSearchResponse();
        //set tat ca filed data cho it1
        it2.setId(2L);
        it2.setCreatedDate("2020-01-01");
        it2.setName("Building 1");
        it2.setAddress("Address 1");
        it2.setNumberOfBasement(2L);
        it2.setManagerName("Manager 1");
        it2.setManagerPhoneNumber("0123456789");
        it2.setFloorArea(100L);
        it2.setEmptyArea("Empty Area 1");
        it2.setRentArea("Rent Area 1");
        it2.setRentPrice(1000L);
        it2.setServiceFee("Service Fee 1");
        it2.setBrokerageFee(0.1);

        buildingSearchResponseList.add(it1);
        buildingSearchResponseList.add(it2);
        buildingSearchResponseList.add(it1);
        buildingSearchResponseList.add(it2);
        buildingSearchResponseList.add(it1);
        buildingSearchResponseList.add(it1);

        // xong roi xu ly tiep

        // day ra view
        mav.addObject("buildingList", buildingSearchResponseList);


        // xong roi xu ly tiep
        mav.addObject("staffList", userService.getStaff());


            return mav;
    }


    @GetMapping(value = "/admin/building-edit")
    public ModelAndView buildingEdit(HttpServletRequest request){
        ModelAndView mav = new ModelAndView("admin/building/edit");
        BuildingDTO buildingDTO = new  BuildingDTO();
        mav.addObject("building-edit", buildingDTO);

        return mav;
    }

    @GetMapping(value = "/admin/building-edit-{id}")
  ModelAndView buildingEdit(@PathVariable("id") Long id, HttpServletRequest request){
        ModelAndView mav = new ModelAndView("admin/building/edit");
        // xuong db lay du lieu
        // xu ly du lieu
        BuildingDTO buildingDTO = new BuildingDTO();
        buildingDTO.setId(id);
        buildingDTO.setName("Building 1");
        buildingDTO.setNumberOfBasement(2L);
        buildingDTO.setManagerName("Manager 1");
        buildingDTO.setFloorArea(100L);
        buildingDTO.setRentArea("Rent Area 1");
        buildingDTO.setRentPrice(1000L);
        buildingDTO.setServiceFee("Service Fee 1");
        buildingDTO.setBrokerageFee(0.1);
        buildingDTO.setTypeCode(Arrays.asList("tang-tret","nguyen-can","noi-that"));
        mav.addObject("building-edit", buildingDTO);

        return mav;
    }




}
