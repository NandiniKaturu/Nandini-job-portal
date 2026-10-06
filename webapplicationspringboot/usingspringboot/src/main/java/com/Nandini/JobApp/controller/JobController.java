package com.Nandini.JobApp.controller;

import com.Nandini.JobApp.model.JobPost;
import com.Nandini.JobApp.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class JobController {

    @Autowired
    private JobService service;

    @GetMapping({"/", "home"})
    public String home() {
        return "home";
    }

    @GetMapping("addjob")
    public String addJob() {
        return "addjob";
    }

    @PostMapping("handleForm")
    public String handleForm(JobPost jobPost) {
        service.addJob(jobPost);
        return "success";
    }

    @GetMapping("viewalljobs")
    public String viewJobs(Model m) {
        List<JobPost> jobs = service.getAllJobs();
        m.addAttribute("jobPosts", jobs);
        return "viewalljobs";
    }

    // ✅ Handle Delete Job by ID
    @GetMapping("deletejob")
    public String deleteJob(@RequestParam("id") int id) {
        service.deleteJob(id);
        return "redirect:/viewalljobs";
    }

    // ✅ Show Edit Form for Job
    @GetMapping("editjob")
    public String showEditForm(@RequestParam("id") int id, Model model) {
        JobPost job = service.getJobById(id);
        model.addAttribute("jobPost", job);
        return "editjob";  // Create a JSP page named editjob.jsp
    }

    // ✅ Handle Edit Form Submission
    @PostMapping("updatejob")
    public String updateJob(@ModelAttribute JobPost jobPost) {
        service.updateJob(jobPost);  // You must implement this in JobService
        return "redirect:/viewalljobs";
    }
}