<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="Thanh Nguyen - Dự án Motobike Shop" />
    <meta name="author" content="Thanh Nguyen" />
    <title>Amin</title>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
    <link href="/css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
</head>

<body class="sb-nav-fixed">
    <jsp:include page="../layout/header.jsp"/>
    <div id="layoutSidenav">
        <jsp:include page="../layout/sidebar.jsp"/>
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid px-4">
                    <h1 class="mt-4">Manage Users</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item">Dashboard</li>
                        <li class="breadcrumb-item active">Users</li>
                    </ol>
                    <div class="container mt-5">
                      <div class="d-flex justify-content-between">
                          <h1>Table User</h1>
                          <a href="/admin/user/create"><button class="btn btn-primary">Create a User</button></a>
                      </div>
                      <hr />
                      <div>
                          <table class="table table-hover table-bordered">
                              <thead>
                                <tr>
                                  <th scope="col">ID</th>
                                  <th scope="col">Email</th>
                                  <th scope="col">FullName</th>
                                  <th scope="col">Action</th>
                                </tr>
                              </thead>
                              <tbody class="table-hover">
                                <c:forEach var="user" items="${users}">
                                <tr>
                                  <th scope="row">${user.id}</th>
                                  <td>${user.email}</td>
                                  <td>${user.fullName}</td>
                                  <td>
                                      <a href="/admin/user/${user.id}" class="btn btn-success">View</a>
                                      <a href="/admin/user/update/${user.id}" class="btn btn-warning">Update</a>
                                      <a href="/admin/user/delete/${user.id}" class="btn btn-danger">Delete</a>
                                  </td> 
                                </tr>   
                                </c:forEach>           
                              </tbody>
                            </table>
                      </div>
                  </div>
                </div>
            </main>
            <jsp:include page="../layout/footer.jsp"/>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
    <script src="/js/scripts.js"></script>
</body>

</html>
