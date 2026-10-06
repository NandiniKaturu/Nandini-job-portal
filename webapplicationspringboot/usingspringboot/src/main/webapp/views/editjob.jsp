<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Job</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h2 class="mb-4 text-center">Edit Job Post</h2>

    <form action="updatejob" method="post">
        <input type="hidden" name="id" value="${jobPost.id}" />

        <div class="mb-3">
            <label for="postProfile" class="form-label">Job Title</label>
            <input type="text" class="form-control" id="postProfile" name="postProfile" value="${jobPost.postProfile}" required>
        </div>

        <div class="mb-3">
            <label for="postDesc" class="form-label">Description</label>
            <textarea class="form-control" id="postDesc" name="postDesc" rows="3" required>${jobPost.postDesc}</textarea>
        </div>

        <div class="mb-3">
            <label for="reqExperience" class="form-label">Experience Required (in years)</label>
            <input type="number" class="form-control" id="reqExperience" name="reqExperience" value="${jobPost.reqExperience}" required>
        </div>

        <div class="mb-3">
            <label for="postTechStack" class="form-label">Tech Stack (comma-separated)</label>
            <input type="text" class="form-control" id="postTechStack" name="postTechStackStr"
                   value="<c:forEach var='tech' items='${jobPost.postTechStack}' varStatus='loop'>
                              ${tech}<c:if test='${!loop.last}'>, </c:if>
                          </c:forEach>">
        </div>

        <button type="submit" class="btn btn-primary">Update Job</button>
        <a href="viewalljobs" class="btn btn-secondary">Cancel</a>
    </form>
</div>

</body>
</html>