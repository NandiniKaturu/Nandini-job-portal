package com.Nandini.JobApp.service;

import com.Nandini.JobApp.model.JobPost;
import com.Nandini.JobApp.repo.JobRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class JobService {

    @Autowired
    private JobRepo repo;

    // ✅ Add a jobPost
    public void addJob(JobPost jobPost) {
        repo.addJob(jobPost);
    }

    // ✅ Get all jobPosts
    public List<JobPost> getAllJobs() {
        return repo.getAllJobs();
    }

    // ✅ Delete job by id
    public void deleteJob(int id) {
        repo.deleteJob(id);
    }

    // ✅ Get job by id (for editing)
    public JobPost getJobById(int id) {
        return repo.getJobById(id);
    }

    // ✅ Update job (submitted from edit form)
    public void updateJob(JobPost jobPost) {
        repo.updateJob(jobPost);
    }
}