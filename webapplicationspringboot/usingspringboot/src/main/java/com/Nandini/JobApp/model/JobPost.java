package com.Nandini.JobApp.model;

import java.util.List;

public class JobPost {

    private int id; // ✅ This is required
    private String postProfile;
    private String postDesc;
    private int reqExperience;
    private List<String> postTechStack;

    // ✅ Constructor
    public JobPost(int id, String postProfile, String postDesc, int reqExperience, List<String> postTechStack) {
        this.id = id;
        this.postProfile = postProfile;
        this.postDesc = postDesc;
        this.reqExperience = reqExperience;
        this.postTechStack = postTechStack;
    }

    public JobPost() {
    }

    // ✅ Getters & Setters (must include getId())
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPostProfile() {
        return postProfile;
    }

    public void setPostProfile(String postProfile) {
        this.postProfile = postProfile;
    }

    public String getPostDesc() {
        return postDesc;
    }

    public void setPostDesc(String postDesc) {
        this.postDesc = postDesc;
    }

    public int getReqExperience() {
        return reqExperience;
    }

    public void setReqExperience(int reqExperience) {
        this.reqExperience = reqExperience;
    }

    public List<String> getPostTechStack() {
        return postTechStack;
    }

    public void setPostTechStack(List<String> postTechStack) {
        this.postTechStack = postTechStack;
    }
}