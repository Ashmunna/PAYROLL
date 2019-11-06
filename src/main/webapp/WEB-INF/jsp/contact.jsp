<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<jsp:include page="header.jsp" />





	
	<div class="card-body align-items-center d-flex justify-content-center"> <!--  -->

		<div class="container login-container row justify-content-center bg-dark" style="margin: 80px auto; width: 750px">
		
			<div class="text-center px-lg-5" style="padding: 20px">
					<h3 style="color: yellow;">${message}</h3>
	
			</div>
			
			<div class="row" style="margin-left:150px; padding: 30px">

				<div class="col-lg-12" >
					<h3 style="color:yellow">Contact Us Page</h3>
					<br>
				</div>


				<div class="col-lg-6 login-form-2"  style="color:yellow">

					<form name='f' action="/contactSave" method='POST'>
						
						<label>Name:</label>
						<div class="form-group" style="width: 300px; color:yellow" >
							<input type="text" name="name" class="form-control"
								placeholder="Write Your Name" value="" />
						</div>
						<label>Email:</label>
						<div class="form-group" style="width: 300px">
							<input type="email" name="email" class="form-control"
								placeholder="Write Your Mail Address" value="" />
						</div>
						<label>Subject:</label>
						<div class="form-group" style="width: 300px">
							<input type="text" name="subject" class="form-control"
								placeholder="Write Your Subject" value="" />
						</div>
						<label>Message:</label>
						<div class="form-group" style="width: 300px">
						
							<textarea type="text" name="message" class="form-control"
								placeholder="Write Your Message">
							
							</textarea>
							
						</div>

						<br>
						<div class="form-group">
							<input type="submit" class="btn btn-success" value="Send Messages" />
						</div>
						
						
					</form>
				</div>
			</div>
		</div>
		
	</div>


<jsp:include page="footer.jsp" />