package com.sit.placementcell.app.controller;


import com.sit.placementcell.app.entity.JobAppliedStudents;
import com.sit.placementcell.app.service.JobApplicationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/sit/applications")
public class JobApplicationController {

    @Autowired
    private JobApplicationService jobApplicationService;

    @GetMapping("/all")
    public List<JobAppliedStudents> findAll(){
        return jobApplicationService.findAll();
    }
}
