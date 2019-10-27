<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<jsp:include page="header.jsp" />



<div class="container login-container row justify-content-center"  style="margin-top: 130px">
            <div class="row">
                
                <div class="col-md-6 login-form-2">
                    <h3>Admin Login</h3>
                    <form>
                        <div class="form-group" style="width: 350px">
                            <input type="text" class="form-control" placeholder="Your Username *" value="" />
                        </div>
                        <div class="form-group" style="width: 350px">
                            <input type="password" class="form-control" placeholder="Your Password *" value="" />
                        </div>
                        <div class="form-group">
                            <input type="submit" class="btn btn-success" value="Login" />
                        </div>
                        <div class="form-group">

                            <a href="#" class="ForgetPwd" value="Login">Forget Password?</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>



            
            
<jsp:include page="footer.jsp" />
