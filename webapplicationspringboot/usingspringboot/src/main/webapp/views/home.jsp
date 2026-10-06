<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Job Portal - Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
          crossorigin="anonymous">

    <!-- Optional custom CSS -->
    <link rel="stylesheet" href="stylesheet.css">
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-info">
    <div class="container">
        <a class="navbar-brand fs-1 fw-medium" href="#">Nandini Job Portal</a>
        <button class="navbar-toggler" type="button"
                data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="home">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="viewalljobs">All Jobs</a></li>
                <li class="nav-item"><a class="nav-link" href="https://www.simplyhired.com/" target="_blank">Additional Jobs</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Hero Section -->
<section class="bg-light py-5 text-center">
    <div class="container">
        <h1 class="display-5 fw-bold text-secondary">Welcome to Nandini's Job Portal</h1>
        <p class="lead mt-3 text-secondary">
            This platform allows companies to post job openings and job seekers to explore opportunities
            across various roles like Java Developer, Frontend Engineer, Data Scientist, and more. Start your
            career journey with ease and simplicity.
        </p>
    </div>
</section>

<!-- Action Cards -->
<div class="container mt-5">
    <div class="row g-4">

        <!-- View All Jobs Card -->
        <div class="col-md-6">
            <div class="card border-info shadow-sm">
                <div class="card-body text-center">
                    <h5 class="card-title">Explore Job Openings</h5>
                    <p class="card-text">Browse all available job postings in one place.</p>
                    <a href="/viewalljobs" class="btn btn-info">View All Jobs</a>
                </div>
            </div>
        </div>

        <!-- Add New Job Card -->
        <div class="col-md-6">
            <div class="card border-success shadow-sm">
                <div class="card-body text-center">
                    <h5 class="card-title">Post a New Job</h5>
                    <p class="card-text">Are you an employer? Add your job vacancy here.</p>
                    <a href="/addjob" class="btn btn-success">Add Job</a>
                </div>
            </div>
        </div>

    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>

</body>
</html>