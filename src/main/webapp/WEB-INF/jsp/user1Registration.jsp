<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<section class="content-info py-5">
    <div class="container py-md-5" style="margin-top: 125px;">
        <div class="text-center px-lg-5">
            <h3 style="color: green;">${msg}</h3>
            <h3 class="title-w3ls mb-5" style="color: green;">Please Registation</h3>
            <div class="title-desc text-center px-lg-5">
                <p class="px-lg-5 sub-vj">Please read our terms and condition if you agree 
                with us you can apply for loan otherwise you don't need apply for the loan.</p>
            </div>
        </div>
        <div class="contact-w3ls-form mt-5">
            <form action="/save" class="w3-pvt-contact-fm" method="post">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label>First Name</label> <input class="form-control" type="text"
                                name="fName" placeholder="Enter First Name" required="">
                        </div>
                        <div class="form-group">
                            <label>Last Name</label> <input class="form-control" type="text"
                                name="lName" placeholder="Enter last Name" required="">
                        </div>
                        <div class="form-group">
                            <label>Email</label> <input class="form-control" type="email"
                                name="email" placeholder="Enter Email" required="">
                        </div>
                        
                        <div class="form-group">
                            <label>Created Date</label> <output class="form-control"
                                type="date" id="demo" name="createDate" />
                        </div>
                         <div class="form-group">
                            <label>Created Date</label> <output class="form-control"
                                type="date" id="demo" name="updateDate" />
                        </div>
                        <div class="form-group">
                            <label>Role</label> <select class="form-control" name="role">
                                <option value="admin">Admin</option>
                                <option value="user">User</option>
                                
                            </select>
                        </div>
                    </div>
                    <div class="col-lg-6">
                       
                        <div class="form-group">
                            <label>Username</label> <input class="form-control" type="text"
                                name="username" placeholder="Enter Username" required="">
                        </div>
                        <div class="form-group">
                            <label>Password</label> <input class="form-control" type="text"
                                name="password" placeholder="Enter Password" required="">
                        </div>
                        <div class="form-group">
                            <label>Enabled</label> <select class="form-control"
                                name="enabled">
                                <option value="True">True</option>
                                <option value="False">False</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group mx-auto mt-3">
                        <button type="submit" class="btn submit btn-success">Submit</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>
<script>
    var d = new Date();
    document.getElementById("demo").innerHTML = d;
</script>
