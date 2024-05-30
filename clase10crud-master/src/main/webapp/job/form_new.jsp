<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
              crossorigin="anonymous">
        <title>Crear un nuevo trabajo</title>
    </head>
    <body>
        <div class='container'>
            <h1 class='mb-3'>Crear un nuevo trabajo</h1>
            <!--
                para enviar un form necesito 4 cosas:
                    - método http: post
                    - a dónde va: a un servlet -> ??? -> Jobservlet
                    - ¿qué voy a mandar? -> inputs y deben tener "name"
                    - un botón con type submit (para enviarlo)
            -->
            <form method="post" action="<%=request.getContextPath()%>/JobServlet">
                <div class="mb-3">
                    <labe>Job ID</labe>
                    <input type="text" class="form-control" name="jobId">
                </div>
                <div class="mb-3">
                    <label>Job Title</label>
                    <input type="text" class="form-control" name="jobTitle">
                </div>
                <div class="mb-3">
                    <label>Min Salary</label>
                    <input type="text" class="form-control" name="minSalary">
                </div>
                <div class="mb-3">
                    <label>Max Salary</label>
                    <input type="text" class="form-control" name="maxSalary">
                </div>
                <a href="<%=request.getContextPath()%>/JobServlet" class="btn btn-danger">Regresar</a>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
                crossorigin="anonymous"></script>
    </body>
</html>

