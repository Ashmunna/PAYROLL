<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>






<div class="container login-container row justify-content-center"  style="margin-top: 130px">
            <div class="row">
                
                <div class="col-md-6 login-form-2">
                    <h3>User Login</h3>
                    <form name='f' action="/login" method='POST'>
                        <div class="form-group" style="width: 300px" >
                            <input type="text" name="username" class="form-control" placeholder="Your Username *" value="" />
                        </div>
                        <div class="form-group"  style="width: 300px">
                            <input type="password" name="password" class="form-control" placeholder="Your Password *" value="" />
                        </div>
                        
                        <div class="form-group">
                            <label>Role</label> <select class="form-control"
                                name="role">
                                <option value="admin">admin</option>
                                <option value="user">user</option>
                            </select>
                        </div>
                        
                        <div class="form-group">
                            <input type="submit" class="btn btn-success" value="Login" />
                        </div>
                        <div class="form-group">

                            <a href="#" class="ForgetPwd" value="Login">Forget Password?</a>
                        </div>
                       <div class="form-group">

                            <a href="/register" value="Registration"> Registration </a>
                        </div>
                    </form>
                </div>
            </div>
        </div>



            
            
